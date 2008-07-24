(

  # Keep shadow from installing it's own pam.d files
  sedit '/^SUBDIRS/ n; s/etc//' Makefile.in Makefile.am &&

  if  module_installed  Linux-PAM;  then
    OPTS="$OPTS --with-libpam"
  else
    OPTS="$OPTS --without-libpam"
  fi &&

  ./configure --prefix=/ \
              --libdir=/usr/lib \
              --datadir=/usr/share \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man \
              --localedir=/usr/share/locale \
              --with-libcrypt \
              --with-libcrack \
              --without-selinux \
              --without-skey \
              $OPTS &&

  make &&
  prepare_install &&
  make suidperms=4711 install &&

  # libshadow.a and libshadow.la should not be installed,
  # they are for internal use only and may break compilation
  # for other modules
  rm -f /usr/lib/libshadow.{a,la} &&

  # We only need these files without PAM
  if ! module_installed Linux-PAM; then
    sedit 's|^CRACKLIB_DICTPATH.*$|CRACKLIB_DICTPATH /lib/cracklib/pw_dict|' etc/login.defs
    sedit 's|#MD5_CRYPT_ENAB.*$|MD5_CRYPT_ENAB yes|' etc/login.defs
    sedit 's|^USERGROUPS_ENAB.*|USERGROUPS_ENAB no|' etc/login.defs
    [ -e /etc/limits ] || install -m 0644 etc/limits /etc/
    [ -e /etc/login.access ] || install -m 0644 etc/login.access /etc/
    [ -e /etc/login.defs ] || install -m 0644 etc/login.defs /etc/
  else
    [ -e /etc/login.defs ] || install -m 0644 $SOURCE_CACHE/$SOURCE2 /etc/login.defs
  fi &&

  [ -e /etc/securetty  ] || install -m 0644 $SCRIPT_DIRECTORY/securetty /etc/ &&
  ln -sf /sbin/vipw /sbin/vigr &&
  install $SCRIPT_DIRECTORY/adduser /sbin/ &&
  install $SCRIPT_DIRECTORY/deluser /sbin/

) > $C_FIFO 2>&1
