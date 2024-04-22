BUILD_DIR ?= build

HSS_REPOSITORY ?= https://git.beagleboard.org/beaglev-fire/hart-software-services.git
HSS_BRANCH ?= main-beaglev-fire
HSS_BOARD ?= bvf

SOURCES = \
	$(shell find scripts/ -type f -name "*.tcl") \
	$(shell find sources/components/ -type f -name "*.tcl" -o -name "*.sdc" -o -name "*.pdc") \
	$(shell find sources/constraints/ -type f -name "*.sdc" -o -name "*.pdc") \
	$(shell find sources/hdl -type f -name "*.v" -o -name "*.sv" -o -name "*.tcl")

.PHONY: all
all: bitstream

.PHONY: bitstream
bitstream: $(BUILD_DIR)/bitstream/fpe/gateware.job

.PHONY: gateware
gateware: $(BUILD_DIR)/gateware/gateware.prjx

.PHONY: mss
mss: $(BUILD_DIR)/mss/PF_SOC_MSS_mss_cfg.xml

.PHONY: hss
hss: $(BUILD_DIR)/hss/Default/bootmode1/hss-envm-wrapper-bm1-p0.hex

$(BUILD_DIR)/gateware/.stamp $(BUILD_DIR)/gateware/gateware.prjx: $(BUILD_DIR)/mss/PF_SOC_MSS.cxz $(SOURCES)
	-$(RM) -r $(BUILD_DIR)/gateware
	libero SCRIPT:scripts/init.tcl "SCRIPT_ARGS: OUTPUT_PATH:$(CURDIR)/$(BUILD_DIR) MSS_EXPORT_PATH:$(BUILD_DIR)/mss/PF_SOC_MSS.cxz"
	touch $@

$(BUILD_DIR)/bitstream/fpe/gateware.job: $(BUILD_DIR)/hss/Default/bootmode1/hss-envm-wrapper-bm1-p0.hex $(BUILD_DIR)/gateware/.stamp
	libero SCRIPT:scripts/run.tcl "SCRIPT_ARGS: OUTPUT_PATH:$(CURDIR)/$(BUILD_DIR) HSS_IMAGE_PATH:$(BUILD_DIR)/hss/Default/bootmode1/hss-envm-wrapper-bm1-p0.hex"

$(BUILD_DIR)/hss/Default/bootmode1/hss-envm-wrapper-bm1-p0.hex: $(BUILD_DIR)/mss/PF_SOC_MSS_mss_cfg.xml
	[ -d $(BUILD_DIR)/hss ] || git clone -b $(HSS_BRANCH) --depth 1 $(HSS_REPOSITORY) $(BUILD_DIR)/hss
	cp $< $(BUILD_DIR)/hss/boards/$(HSS_BOARD)/soc_fpga_design/xml/PF_SOC_MSS_mss_cfg.xml
	cp $(BUILD_DIR)/hss/boards/$(HSS_BOARD)/def_config $(BUILD_DIR)/hss/.config
	$(MAKE) -C $(BUILD_DIR)/hss BOARD=$(HSS_BOARD)

$(BUILD_DIR)/mss/PF_SOC_MSS_mss_cfg.xml $(BUILD_DIR)/mss/PF_SOC_MSS.cxz:
	[ -d $(BUILD_DIR)/mss ] || mkdir -p $(BUILD_DIR)/mss
	pfsoc_mss -GENERATE -CONFIGURATION_FILE:$(CURDIR)/sources/mss/mss_linux.cfg -OUTPUT_DIR:$(BUILD_DIR)/mss

.PHONY: clean
clean:
	-$(RM) -r $(BUILD_DIR)
