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

  autoconf &&
  ./configure  --enable-read-both-confs                 \
               --enable-docdir=/usr/share/doc/Linux-PAM \
               --mandir=/usr/share/man                  \
               --enable-static-libpam			&&

  # Is Berk DB installed?
  if ! module_installed db; then
      sedit "s:^HAVE_NDBM_H=yes:HAVE_NDBM_H=no:; \
             s:^HAVE_LIBNDBM=yes:HAVE_LIBNDBM=no:; \
             s:^HAVE_LIBDB=yes:HAVE_LIBDB=no:" Make.Rules &&
      sedit "s:^#define HAVE_NDBM_H.*$:/* #undef HAVE_NDBM_H */:; \
             s:^#define HAVE_DB_H.*$:/* #undef HAVE_DB_H */:" _pam_aconf.h
  else
      sedit "s:^HAVE_NDBM_H=yes:HAVE_NDBM_H=no:; \
             s:^HAVE_LIBNDBM=yes:HAVE_LIBNDBM=no:" Make.Rules &&
      sedit "s:^#define HAVE_NDBM_H.*$:/* #undef HAVE_NDBM_H */:" _pam_aconf.h
  fi &&

  sedit  "s/examples//"  Makefile              &&
  sedit  "s/read yes//"     conf/install_conf  &&
  sedit  "s/read yes//"  modules/install_conf  &&
  make                                         &&
  prepare_install                              &&
  make    install                              &&
 
  # Module documents are nice
  if [ ! -d /usr/share/doc/Linux-PAM/text ]; then
      mkdir -p /usr/share/doc/Linux-PAM/text
  fi &&
  for i in $SOURCE_DIRECTORY/modules/pam_*/README; do
      cp -f ${i} /usr/share/doc/Linux-PAM/text/README.$(echo ${i} | awk -F/ '{ print $(NF-1) }')
  done &&
  
	
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
