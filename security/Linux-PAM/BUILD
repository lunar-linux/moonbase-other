(

  if  !  module_installed  linuxdoc-tools  ||
      !  module_installed  teTeX;          then
    export  HAVE_SGML2LATEX=no
  fi

  sedit "s:/sbin/ldconfig:/usr/sbin/ldconfig:" configure &&
  ./configure  --enable-read-both-confs                 \
               --enable-docdir=/usr/share/doc/Linux-PAM \
               --mandir=/usr/share/man                  &&

  sedit  "s/examples//"  Makefile              &&
  sedit  "s/read yes//"     conf/install_conf  &&
  sedit  "s/read yes//"  modules/install_conf  &&
  sedit  "s/HAVE_LIBCRYPT=no/HAVE_LIBCRYPT=yes/" Make.Rules 
  make                                         &&
  prepare_install                              &&
  make    install

) > $C_FIFO 2>&1  && (

  ln  -sf  libpam.so.$VERSION       /lib/libpam.so
  ln  -sf  libpam.so.$VERSION       /lib/libpam.so.0
  ln  -sf  libpam_misc.so.$VERSION  /lib/libpam_misc.so
  ln  -sf  libpam_misc.so.$VERSION  /lib/libpam_misc.so.0
  ln  -sf  libpamc.so.$VERSION      /lib/libpamc.so
  ln  -sf  libpamc.so.$VERSION      /lib/libpamc.so.0

)
