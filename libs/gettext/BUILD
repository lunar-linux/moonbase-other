(

  patch_it $SOURCE_CACHE/$SOURCE2 1 			 &&
  
  if ! module_installed teTeX || ! module_installed linuxdoc-tools ; then
    sedit "s:SUBDIRS = doc:SUBDIRS =:" Makefile.am Makefile.in
    sedit 's/cd doc && $(MAKE) ps//'   Makefile.am Makefile.in
    sedit 's/cd doc && $(MAKE) pdf//'  Makefile.am Makefile.in
    sedit 's/cd doc && $(MAKE) html//' Makefile.am Makefile.in
  fi

  sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" \
     doc/Makefile.am doc/Makefile.in \
     intl-java/Makefile.am intl-java/Makefile.in \
     man/Makefile.am man/Makefile.in

  touch *

  ./configure  --build=$BUILD            \
               --host=$BUILD             \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --mandir=/usr/share/man   \
	       --infodir=/usr/share/info \
	       --disable-shared          \
	       --without-libintl-prefix  \
               $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
