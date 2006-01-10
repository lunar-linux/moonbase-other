(

  touch *
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  if  module_installed  Linux-PAM;  then
    OPTS="$OPTS --with-libpam"
  fi
  OPTS="$OPTS --with-libcrack"

  ./configure --prefix=/ --libdir=/usr/lib --datadir=/usr/share --infodir=/usr/share/info --mandir=/usr/share/man $OPTS &&

  sedit 's|^ENV_TZ|#ENV_TZ|' etc/login.defs*
  sedit 's|#CRACKLIB_DICTPATH.*$|CRACKLIB_DICTPATH /lib/cracklib/|g' etc/login.defs*
  sedit 's|#MD5_CRYPT_ENAB.*$|MD5_CRYPT_ENAB yes|' etc/login.defs*
  sedit 's|^ULIMIT|#ULIMIT|' etc/login.defs*

  default_make &&

  for FILE in limits login.access login.defs ; do
    [ -e /etc/$FILE ] || install etc/$FILE /etc/
  done
  [ -e /etc/securetty  ] || install $SCRIPT_DIRECTORY/securetty /etc/
  ln -sf /sbin/vipw /sbin/vigr &&
  install $SCRIPT_DIRECTORY/adduser /sbin/ &&
  install $SCRIPT_DIRECTORY/deluser /sbin/

) > $C_FIFO 2>&1
