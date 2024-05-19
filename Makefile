PROJECT := kronus

BOARD ?= mpfs-disco-kit

SOURCES := \
	$(shell find sources/$(BOARD) -type f -name "*.tcl" -o -name "*.sdc" -o -name "*.pdc" -o -name "*.v" -o -name "*.sv")

include scripts/project.mk
