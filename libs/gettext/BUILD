module_present()  {
  module_installed  $1  ||
  module_held       $1
}


(

  if  !  module_present  teTeX  ||
      !  module_present  linuxdoc-tools;  then

    cp   Makefile.am                      Makefile.am.original
    sed  's/cd doc && $(MAKE) ps//'       Makefile.am.original  |
    sed  's/cd doc && $(MAKE) pdf//'                            |
    sed  's/cd doc && $(MAKE) html//'  >  Makefile.am

  fi

   sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" doc/Makefile.am
   sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" doc/Makefile.in

   sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" intl-java/Makefile.am
   sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" intl-java/Makefile.in

   sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" man/Makefile.am
   sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/share\/doc/" man/Makefile.in

  touch *

  ./configure  --build=$BUILD            \
               --host=$BUILD             \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --mandir=/usr/share/man   \
	       --infodir=/usr/share/info \
               --with-included-gettext   \
               $OPTS                     &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
