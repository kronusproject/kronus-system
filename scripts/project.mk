# Assumes this file is in scripts/project.mk
ROOT_DIR := $(subst scripts/project.mk,,$(lastword $(MAKEFILE_LIST)))

PROJECT ?= kronus

BOARD ?= mpfs-disco-kit

SOURCES += \
	$(shell find $(ROOT_DIR)sources/common -type f -name "*.tcl" -o -name "*.sdc" -o -name "*.pdc" -o -name "*.v" -o -name "*.sv") \
	$(shell find $(ROOT_DIR)sources/$(BOARD) -type f -name "*.tcl" -o -name "*.sdc" -o -name "*.pdc" -o -name "*.v" -o -name "*.sv")

BUILD_DIR ?= build
OUTPUT_DIR ?= $(BUILD_DIR)/$(BOARD)

SCRIPT ?= $(ROOT_DIR)scripts/project.tcl
SCRIPT_ARGS = BOARD:$(BOARD) PROJECT:$(PROJECT) OUTPUT_DIR:$(abspath $(OUTPUT_DIR))

HSS_REPOSITORY ?= https://github.com/polarfire-soc/hart-software-services.git
HSS_REVISION ?= v2024.06
HSS_BOARD ?= $(BOARD)

ifdef UPDATE_HSS
HSS_IMAGE_PATH := $(OUTPUT_DIR)/hss/build/hss-envm-wrapper.$(HSS_BOARD).hex
SCRIPT_ARGS += UPDATE_HSS
endif

MSS_COMPONENT := PF_SOC_MSS

.PHONY: all
all: bit

.PHONY: bit
bit: $(OUTPUT_DIR)/build.stamp

.PHONY: fpe
fpe: $(OUTPUT_DIR)/export/$(PROJECT).job

.PHONY: spi
spi: $(OUTPUT_DIR)/export/$(PROJECT).spi

.PHONY: pgm
pgm: $(OUTPUT_DIR)/build.stamp
	libero SCRIPT:$(ROOT_DIR)scripts/program.tcl "SCRIPT_ARGS: $(SCRIPT_ARGS)"

.PHONY: prj
prj: $(OUTPUT_DIR)/project.stamp

.PHONY: mss
mss: $(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml

.PHONY: hss
hss: $(OUTPUT_DIR)/hss/build/hss-envm-wrapper.$(HSS_BOARD).hex

$(OUTPUT_DIR)/project.stamp: $(OUTPUT_DIR)/mss/$(MSS_COMPONENT).cxz $(ROOT_DIR)scripts/project.tcl $(SOURCES)
	-$(RM) -r $(OUTPUT_DIR)/project
	libero SCRIPT:$(SCRIPT) "SCRIPT_ARGS: $(SCRIPT_ARGS)"
	touch $@

$(OUTPUT_DIR)/build.stamp: $(HSS_IMAGE_PATH) $(ROOT_DIR)scripts/build.tcl $(OUTPUT_DIR)/project.stamp
	libero SCRIPT:$(ROOT_DIR)scripts/build.tcl "SCRIPT_ARGS: $(SCRIPT_ARGS)"
	touch $@

$(OUTPUT_DIR)/export/$(PROJECT).job: $(HSS_IMAGE_PATH) $(ROOT_DIR)scripts/export.tcl $(OUTPUT_DIR)/build.stamp
	libero SCRIPT:$(ROOT_DIR)scripts/export.tcl "SCRIPT_ARGS: $(SCRIPT_ARGS) EXPORT_FPE"

$(OUTPUT_DIR)/export/$(PROJECT).spi: $(HSS_IMAGE_PATH) $(ROOT_DIR)scripts/export.tcl $(OUTPUT_DIR)/build.stamp
	libero SCRIPT:$(ROOT_DIR)scripts/export.tcl "SCRIPT_ARGS: $(SCRIPT_ARGS) EXPORT_SPI"

$(OUTPUT_DIR)/hss/build/hss-envm-wrapper.$(BOARD).hex: $(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml $(ROOT_DIR)sources/$(BOARD)/hss/def_config
	[ -d $(OUTPUT_DIR)/hss ] || git clone -b $(HSS_REVISION) --depth 1 $(HSS_REPOSITORY) $(OUTPUT_DIR)/hss
	cp $(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml $(OUTPUT_DIR)/hss/boards/$(HSS_BOARD)/soc_fpga_design/xml/
	cp $(ROOT_DIR)sources/$(BOARD)/hss/def_config $(OUTPUT_DIR)/hss/.config
	$(MAKE) -C $(OUTPUT_DIR)/hss BOARD=$(HSS_BOARD)

$(OUTPUT_DIR)/mss/$(MSS_COMPONENT)_mss_cfg.xml $(OUTPUT_DIR)/mss/$(MSS_COMPONENT).cxz: $(ROOT_DIR)sources/$(BOARD)/mss/$(MSS_COMPONENT).cfg
	mkdir -p $(OUTPUT_DIR)/mss
	pfsoc_mss -GENERATE -CONFIGURATION_FILE:$(abspath $<) -OUTPUT_DIR:$(OUTPUT_DIR)/mss

.PHONY: clean
clean:
	-$(RM) -r $(BUILD_DIR)
