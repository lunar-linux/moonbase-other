(

  if  !  module_installed  linuxdoc-tools  ||
      !  module_installed  teTeX;          then
    export  HAVE_SGML2LATEX=no
  fi

  cat >> modules/pam_limits/limits.skel << EOF

#lunar hack to disable core dumps  
*                soft     core            0
*                hard     core            0
EOF

  ./configure  --enable-read-both-confs                 \
               --enable-docdir=/usr/share/doc/Linux-PAM \
               --mandir=/usr/share/man                  &&

  sedit  "s/examples//"  Makefile              &&
  sedit  "s/read yes//"     conf/install_conf  &&
  sedit  "s/read yes//"  modules/install_conf  &&
  sedit  "s/HAVE_LIBCRYPT=no/HAVE_LIBCRYPT=yes/" Make.Rules &&
  sedit  "s/DYNAMIC=/DYNAMIC=-fPIC /" Make.Rules &&
  make                                         &&
  prepare_install                              &&
  make    install
set -x
  OLD_MD5=`md5sum /etc/security/limits.conf | cut -d " " -f 1-1`
  [ "$OLD_MD5" = "a9f7a9bc1db8b300cff38294f577abbd" ] && 
  cp modules/pam_limits/limits.skel /etc/security/limits.conf
set +x  

) > $C_FIFO 2>&1  && (

  ln  -sf  libpam.so.$VERSION       /lib/libpam.so
  ln  -sf  libpam.so.$VERSION       /lib/libpam.so.0
  ln  -sf  libpam_misc.so.$VERSION  /lib/libpam_misc.so
  ln  -sf  libpam_misc.so.$VERSION  /lib/libpam_misc.so.0
  ln  -sf  libpamc.so.$VERSION      /lib/libpamc.so
  ln  -sf  libpamc.so.$VERSION      /lib/libpamc.so.0

)
