(

  export SGML2LATEX=no
  export SGML2TXT=no
  export SGML2HTML=no
  export SGML2PS=no
  export PS2PDF=no

  # Fix for automake 1.10
  aclocal -I m4 &&
  automake --add-missing --gnu &&
  autoconf &&
  # End fix

  ./configure  --libdir=/lib                            \
               --enable-docdir=/usr/share/doc/Linux-PAM \
               --disable-prelude                        \
               --mandir=/usr/share/man                  \
	       --disable-berkdb                         \
               $OPTS &&

  sedit  "s/examples//"  Makefile              &&
  sedit  "s/read yes//"     conf/install_conf  &&

  make &&
  make check &&
  prepare_install &&
  make install &&

  # Makefile no longer setsuid on unix_chkpwd and pam_timestamp_check
  chmod 4711 /sbin/unix_chkpwd &&
  chmod 4711 /sbin/pam_timestamp_check &&

  # Module documents are nice
  if [ ! -d /usr/share/doc/Linux-PAM/txt ]; then
      mkdir -p /usr/share/doc/Linux-PAM/txt
  fi &&
  for i in $SOURCE_DIRECTORY/modules/pam_*/README; do
      cp -f ${i} /usr/share/doc/Linux-PAM/txt/README.$(echo ${i} | awk -F/ '{ print $(NF-1) }')
  done &&

  # More doc
  gather_docs AUTHORS Copyright &&

  # We have to clean up a bit after Linux-PAM
  rm -f /lib/security/*.la &&

  [ -f /etc/environment ] || touch /etc/environment && 
  [ -f /etc/security/limits.conf ] || install -m 0644 modules/pam_limits/limits.conf /etc/security/

) > $C_FIFO 2>&1  
