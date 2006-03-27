(

  export SGML2LATEX=no

  autoreconf &&
  ./configure  --libdir=/lib                            \
               --enable-docdir=/usr/share/doc/Linux-PAM \
               --mandir=/usr/share/man                  &&

  sedit  "s/examples//"  Makefile              &&
  sedit  "s/read yes//"     conf/install_conf  &&
  default_make                                 &&
 
  # Module documents are nice
  if [ ! -d /usr/share/doc/Linux-PAM/text ]; then
      mkdir -p /usr/share/doc/Linux-PAM/text
  fi &&
  for i in $SOURCE_DIRECTORY/modules/pam_*/README; do
      cp -f ${i} /usr/share/doc/Linux-PAM/text/README.$(echo ${i} | awk -F/ '{ print $(NF-1) }')
  done &&
  
  # We have to clean up a bit after Linux-PAM
  rm -f /lib/security/*.la &&

  [ -f /etc/environment ] || touch /etc/environment && 
  [ -f /etc/security/limits.conf ] || install -m 0644 modules/pam_limits/limits.conf /etc/security/

) > $C_FIFO 2>&1  
