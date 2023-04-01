OS_PLATFORM = $(shell uname)

.PHONY: all
all: bootstrap install

.PHONY: bootstrap
bootstrap:
	@./bootstrap.sh

.PHONY: install
install:
	stow --verbose --target=$$HOME --restow */

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
