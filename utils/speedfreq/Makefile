VERSION ?= 0.7.2

DISTFILES := $(shell bk sfiles -Ug)

BASENAME := speedfreq-$(VERSION)

TARGETS := speedfreq speedfreqd $(SONAME) _speedfreqmodule.so

SONAME := libspeedfreq.so.1

PREFIX ?= /usr
BIN ?= $(PREFIX)/bin
SBIN ?= $(PREFIX)/sbin
MAN ?= $(PREFIX)/share/man
LIB ?= $(PREFIX)/lib
INC ?= $(PREFIX)/include
PY_VER ?= 2.5
PY_INC ?= /usr/include/python$(PY_VER)

INST_OPTS := -o root -g root

CFLAGS := -Werror -Wall -O -ggdb3

all: $(TARGETS)

%.po: %.c
	$(CC) -fpic $(CFLAGS) -o $@ -c $<

speedfreq: speedfreq.o libspeedfreq.so
	$(CC) -Wl,-rpath,$(LIB) -o $@ $(filter %.o,$^) -L. -lspeedfreq

speedfreqd: speedfreqd.o libspeedfreq.so
	$(CC) -Wl,-rpath,$(LIB) -o $@ $(filter %.o,$^) -L. -lspeedfreq

speedfreqd.o: speedfreq.h speedfreq-int.h

speedfreq.o: speedfreq.h

libspeedfreq.po: speedfreq.h speedfreq-int.h

$(SONAME): libspeedfreq.po version.po
	$(CC) -o $@ -shared -fpic -Wl,-soname,$@ $^

libspeedfreq.so: $(SONAME)
	ln -sf $^ $@

_speedfreqmodule.so: python.c version.c libspeedfreq.so
	$(CC) $(CFLAGS) -o $@ -I$(PY_INC) -shared -fpic -Wl,-soname,$@ python.c libspeedfreq.so

dist tarball:	speedfreq-$(VERSION).tar.gz

rpm: tarball
	rpmbuild -ta speedfreq-$(VERSION).tar.gz

version.c: FORCE
	@echo 'const char version[] = "'$(VERSION)'";' > $@.new
	@if cmp $@ $@.new > /dev/null 2>&1 ; then \
		echo "$@ unchanged" ; \
		rm $@.new ; \
	else \
		echo "$@ updated" ; \
		mv $@.new $@; \
	fi

$(BASENAME).tar.gz: $(DISTFILES)
	rm -rf $(BASENAME)
	mkdir $(BASENAME)
	echo $(DISTFILES) | tr ' ' '\n' | \
	  xargs -i cp -a --parents {} $(BASENAME)
	tar czf $(BASENAME).tar.gz $(BASENAME)
	rm -rf $(BASENAME)

clean:
	rm -f $(TARGETS) *.o *.po *.so *~

install: $(TARGETS) libspeedfreq.so
	install $(INST_OPTS) -d -m 755 $(BIN) $(SBIN) $(LIB) $(INITD) \
		$(MAN)/man1 $(MAN)/man3 $(MAN)/man8 $(INC) \
		$(LIB)/python$(PY_VER)/site-packages
	install $(INST_OPTS) -m 755 speedfreq $(BIN)
	install $(INST_OPTS) -m 755 speedfreqd $(SBIN)
	install $(INST_OPTS) -m 644 man/man1/*.1 $(MAN)/man1
	install $(INST_OPTS) -m 644 man/man3/*.3 $(MAN)/man3
	install $(INST_OPTS) -m 644 man/man8/*.8 $(MAN)/man8
	install $(INST_OPTS) -m 755 $(SONAME) $(LIB)
	ln -sf $(SONAME) $(LIB)/$(basename $(SONAME))
	chown root.root $(LIB)/$(basename $(SONAME))
	install $(INST_OPTS) -m 755 _speedfreqmodule.so \
		$(LIB)/python$(PY_VER)/site-packages
	install $(INST_OPTS) -m 644 speedfreq.py \
		$(LIB)/python$(PY_VER)/site-packages
	install $(INST_OPTS) -m 644 speedfreq.h $(INC)

FORCE:

.PHONY: clean FORCE
