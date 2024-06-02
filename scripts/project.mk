# Assumes this file is in scripts/project.mk
KRONUS_DIR := $(subst scripts/project.mk,,$(lastword $(MAKEFILE_LIST)))

PROJECT ?= kronus
BOARD ?= mpfs-disco-kit

SOURCES += $(KRONUS_DIR)scripts/kronus.tcl

BUILD_DIR ?= build
OUTPUT_DIR ?= $(BUILD_DIR)/$(BOARD)

HSS_REPOSITORY ?= https://github.com/polarfire-soc/hart-software-services.git
HSS_REVISION ?= v2024.02.1
HSS_BOARD ?= $(BOARD)

MSS_COMPONENT := PF_SOC_MSS

.PHONY: all
all: fpe

.PHONY: fpe
fpe: $(OUTPUT_DIR)/export/fpe/$(PROJECT).job

.PHONY: prj
prj: $(OUTPUT_DIR)/project/$(PROJECT).prjx

.PHONY: mss
mss: $(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml

.PHONY: hss
hss: $(OUTPUT_DIR)/hss/build/hss-envm-wrapper.$(HSS_BOARD).hex

$(OUTPUT_DIR)/project.stamp $(OUTPUT_DIR)/project/$(PROJECT).prjx: $(OUTPUT_DIR)/mss/$(MSS_COMPONENT).cxz $(KRONUS_DIR)scripts/project.tcl $(SOURCES)
	-$(RM) -r $(OUTPUT_DIR)/project
	libero SCRIPT:$(KRONUS_DIR)scripts/project.tcl "SCRIPT_ARGS: BOARD:$(BOARD) OUTPUT_DIR:$(abspath $(OUTPUT_DIR))"
	touch $(OUTPUT_DIR)/project.stamp

$(OUTPUT_DIR)/export/fpe/$(PROJECT).job: $(OUTPUT_DIR)/hss/build/hss-envm-wrapper.$(HSS_BOARD).hex $(KRONUS_DIR)scripts/build.tcl $(OUTPUT_DIR)/project.stamp
	libero SCRIPT:$(KRONUS_DIR)scripts/build.tcl "SCRIPT_ARGS: OUTPUT_DIR:$(abspath $(OUTPUT_DIR)) HSS_IMAGE_PATH:$<"

$(OUTPUT_DIR)/hss/build/hss-envm-wrapper.$(BOARD).hex: $(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml sources/$(BOARD)/hss/def_config
	[ -d $(OUTPUT_DIR)/hss ] || git clone -b $(HSS_REVISION) --depth 1 $(HSS_REPOSITORY) $(OUTPUT_DIR)/hss
	cp $(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml $(OUTPUT_DIR)/hss/boards/$(HSS_BOARD)/soc_fpga_design/xml/
	cp sources/$(BOARD)/hss/def_config $(OUTPUT_DIR)/hss/.config
	$(MAKE) -C $(OUTPUT_DIR)/hss BOARD=$(HSS_BOARD)

$(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml $(OUTPUT_DIR)/mss/$(MSS_COMPONENT).cxz: sources/$(BOARD)/mss/$(MSS_COMPONENT).cfg
	mkdir -p $(OUTPUT_DIR)/mss
	pfsoc_mss -GENERATE -CONFIGURATION_FILE:$(abspath $<) -OUTPUT_DIR:$(OUTPUT_DIR)/mss

.PHONY: clean
clean:
	-$(RM) -r $(BUILD_DIR)
