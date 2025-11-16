OS_PLATFORM = $(shell uname)
ALL_OS_PLATFORMS := Darwin Linux
EXCLUDED_OS_PLATFORMS := $(shell echo $(filter-out $(OS_PLATFORM), $(ALL_OS_PLATFORMS)) | tr '[:upper:]' '[:lower:]')

.PHONY: all
all: bootstrap install

.PHONY: bootstrap
bootstrap:
	@./bootstrap.sh

.PHONY: install
install:
	stow --verbose --target=$$HOME --restow --ignore=.*\.$(EXCLUDED_OS_PLATFORMS) */

.PHONY: uninstall
uninstall:
	stow --verbose --target=$$HOME --delete */

.PHONY: dump_packages
dump_packages:
ifeq ($(OS_PLATFORM), Darwin)
ifneq ($(wildcard ./Brewfile),)
	rm ./Brewfile
endif
	brew bundle dump
else
	echo "Unsupported platform '$(OS_PLATFORM)'. Cannot dump packages..."
endif
