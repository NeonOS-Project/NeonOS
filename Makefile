#
# NeonOS Makefile
#

CFLAGS  := -Wall -Wextra -pedantic -O1 -nostdlib -nostartfiles
LDFLAGS := -funroll-loops -flto -ffreestanding