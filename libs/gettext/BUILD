module_present()  {
  module_installed  $1  ||
  module_held       $1
}


(

  if [ "$(installed_version gettext)" == "0.11.2" ] ; then
    verbose_msg "forcing recompile of glibc"
    export REBUILD_GLIBC=on
  fi


  if  !  module_present  teTeX  ||
      !  module_present  linuxdoc-tools;  then

    sedit 's/cd doc && $(MAKE) ps//'   Makefile.am
    sedit 's/cd doc && $(MAKE) pdf//'  Makefile.am
    sedit 's/cd doc && $(MAKE) html//' Makefile.am

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
               --with-included-gettext   \
               $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
