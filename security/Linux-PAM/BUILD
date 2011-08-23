(

  export SGML2LATEX=no
  export SGML2TXT=no
  export SGML2HTML=no
  export SGML2PS=no
  export PS2PDF=no

  # Stop pam_env from installing /etc/environment
  sedit "/^sysconf_DATA/d" modules/pam_env/Makefile.am  &&

  AT_M4DIR="m4" autoreconf &&
#  libtoolize &&

  ./configure  --libdir=/lib                       \
               --docdir=/usr/share/doc/Linux-PAM   \
               --disable-prelude                   \
               --mandir=/usr/share/man             \
               --enable-db=no                      \
               --disable-selinux                   \
               --disable-audit                     \
               --enable-isadir=../../lib/security  \
               --enable-nls                        \
               $OPTS                              &&

  sedit  "s/examples//"  Makefile           &&
  sedit  "s/read yes//"  conf/install_conf  &&

  make &&

  # Test our modules, we don't want a broken system
  ldconfig -n $SOURCE_DIRECTORY/libpam/.libs &&
  find $SOURCE_DIRECTORY/modules -name "pam*.so" | while read module; do
        if ! env LD_LIBRARY_PATH=$SOURCE_DIRECTORY/libpam/.libs \
          $SOURCE_DIRECTORY/$MODULE-patches-$PVERSION/dlopen.sh $SOURCE_DIRECTORY -ldl -lpam -L$SOURCE_DIRECTORY/libpam/.libs ${module} ; then
          echo ERROR module: ${module} cannot be loaded.
          exit 1
        fi
  if env LD_LIBRARY_PATH=$SOURCE_DIRECTORY/libpam/.libs \
          LD_PRELOAD=$SOURCE_DIRECTORY/libpam/.libs/libpam.so ldd -r ${module} | fgrep -q libpthread ; then
          echo ERROR module: ${module} pulls threading libraries.
          exit 1
        fi
  done &&

  prepare_install &&
  make install &&

  for i in auth acct passwd session; do
    ln -sf pam_unix.so /lib/security/pam_unix_${i}.so
  done &&

  for i in ${MODULE}-patches-${PVERSION}/limits.d/*.conf; do
    [ -f /etc/security/limits.d/${i} ] || install -m 644 $i /etc/security/limits.d/
  done &&

  # Makefile no longer setsuid on unix_chkpwd and pam_timestamp_check
  chmod 4711 /sbin/unix_chkpwd &&
  chmod 4711 /sbin/pam_timestamp_check &&
  chmod 0700 /sbin/unix_update &&

  # Module documents are nice
  if [ ! -d /usr/share/doc/Linux-PAM/txt ]; then
      mkdir -p /usr/share/doc/Linux-PAM/txt
  fi &&
  for i in $SOURCE_DIRECTORY/modules/pam_*/README; do
      cp -f ${i} /usr/share/doc/Linux-PAM/txt/README.$(echo ${i} | awk -F/ '{ print $(NF-1) }')
  done &&

  # More doc
  gather_docs AUTHORS Copyright &&

  [ -f /etc/environment ] || touch /etc/environment &&
  [ -f /etc/security/limits.conf ] || install -m 0644 modules/pam_limits/limits.conf /etc/security/

) > $C_FIFO 2>&1
