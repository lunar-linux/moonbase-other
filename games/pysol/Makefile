#
# PySol - a solitaire game collection
#

SHELL = /bin/sh

PACKAGE = pysol
VERSION = 4.80

srcdir = .
top_srcdir = $(srcdir)
prefix = /usr
exec_prefix = /usr

bindir = $(exec_prefix)/bin
libdir = $(exec_prefix)/lib
datadir = $(prefix)/share
mandir = $(prefix)/man

pkgdatadir = $(datadir)/$(PACKAGE)/$(VERSION)

# you may have to change this
pixmapdir = /usr/X11R6/include/X11/pixmaps

distdir = $(PACKAGE)-$(VERSION)

#
# targets
#

nothing:

install: install-bin install-data install-man install-icon

install-bin: pysol
	mkdir -p $(bindir)
	sed -e 's|@prefix@|$(prefix)|' -e 's|@pkgdatadir@|$(pkgdatadir)|' < $< > $(bindir)/pysol
	chmod a+rx,go-w $(bindir)/pysol

install-data:
	-rm -rf $(pkgdatadir)
	mkdir -p $(pkgdatadir)
	cp -dR -p data/* $(pkgdatadir)/
	chmod -R a+r $(pkgdatadir)

install-man: pysol.6
	mkdir -p $(mandir)/man6
	cp -p pysol.6 $(mandir)/man6/
	gzip -9f $(mandir)/man6/pysol.6

install-icon: data/pysol.xpm
	test -d $(pixmapdir) && cp -p data/pysol.xpm $(pixmapdir)/

uninstall:
	-rm -f $(bindir)/pysol
	-rm -rf $(pkgdatadir)
	-rm -f $(mandir)/man6/pysol.6*
	-rm -f $(pixmapdir)/pysol.xpm

clean:
	-rm -f *.pyc *.pyo
	-rm -rf $(distdir)

.PHONY: nothing install install-bin install-data install-man install-icon uninstall clean

.NOEXPORT:

