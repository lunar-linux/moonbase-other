# Makefile for EthStatus v0.1.0
# Gabriel Montenegro

LDFLAGS = -lncurses
CFLAGS = -O2 -Wall

BIN = ethstatus
SRC = ethstatus.o
BIN2 = runonboot
SRC2 = runonboot.o

INSTDIR = /usr/local/bin
INSTALL=/usr/bin/install
INSTALL_PARMS=-o 0 -g 0 -s -m 0755

all : ethstatus runonboot printdone

ethstatus : ethstatus.o
	gcc $(CFLAGS) $(LDFLAGS) -o ${BIN} ${SRC}

runonboot : runonboot.o
	gcc $(CFLAGS) -o ${BIN2} ${SRC2}

printdone:
	@if [ -e "./${BIN}" ] || [ -e "./${BIN2}" ]; then echo "Compiled.."; else echo "Error compiling!"; fi

clean:
	rm -f ${BIN} ${BIN2} *.o core *~ 
install:
	$(INSTALL) $(INSTALL_PARMS) ethstatus $(INSTDIR)

