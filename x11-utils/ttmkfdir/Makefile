FREETYPE_INCL=/usr/include/freetype
FREETYPE_LIB=-L/usr/lib -lttf

CC=gcc
CFLAGS=-Wall -pedantic -I$(FREETYPE_INCL)
LDFALGS=$(FREETYPE_LIB) -s
BINDIR=/usr/bin

all: ttmkfdir

ttmkfdir.linuxbin.glibc2: ttmkfdir
	ln $< $@

ttmkfdir: ttmkfdir.o
	$(CC) -o $@ $< $(LDFALGS)

ttmkfdir.o: ttmkfdir.c panose.h ttos2val.h

clean:
	-rm -f ttmkfdir *.o core *~ ttmkfdir.tar.gz ttmkfdir.linuxbin.glibc2

install:
	install -s ttmkfdir $(BINDIR)
