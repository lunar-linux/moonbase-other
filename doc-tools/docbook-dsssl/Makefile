BINDIR = /usr/bin
DESTDIR = /usr/share/sgml/dsssl/dsssl-stylesheets-1.79

all: install

install:
	mkdir -p $(BINDIR)
	mkdir -p $(DESTDIR)
	install -m755 bin/collateindex.pl $(BINDIR)
	cp -a ./* $(DESTDIR)	
