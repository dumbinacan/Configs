# slstatus version
VERSION = 0

# customize below to fit your system

# paths
PREFIX = /home/marco/.suckless
MANPREFIX = $(PREFIX)/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

# flags
CPPFLAGS = -I$(X11INC) -D_DEFAULT_SOURCE
CFLAGS   = -std=c99 -pedantic -Wall -Wextra -Os
LDFLAGS  = -L$(X11LIB) -s
LDLIBS   = -lX11

# compiler and linker
CC = cc
