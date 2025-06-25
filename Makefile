#
# NeonOS Makefile
#
# --- NOTICE ---
#
# This Makefile may NOT work on Windows or macOS systems.
# If this Makefile can be modified to work on either OS,
# do feel free to open up a Pull Request with the the new
# Makefile!
#
# --- REQUIREMENTS ---
#
# > limine  https://github.com/limine-bootloader/limine --depth 1
# > musl    https://git.musl-libc.org/cgit/musl/ --depth 1

# Flags
CFLAGS  := -Wall -Wextra -pedantic -O1 -nostdlib -nostartfiles
LDFLAGS := -funroll-loops -flto -ffreestanding

# Constant definitions
LIMINE = ./limine
MUSL   = ./musl

# Checks if limine exists, in case it doesn't we panic!
ifneq ($(shell test -d $(LIMINE) && echo yes),yes)
	$(error Directory $(LIMINE) was not found.)
endif

ifneq ($(shell test -d $(MUSL) && echo yes),yes)
	$(error Directory $(MUSL) was not found.)
endif

clean:
	@echo Purging build directory...

deep_clean:
	@echo Cleaning entire repository
	@rm -rf $(LIMINE)
	@rm -rf $(MUSL)