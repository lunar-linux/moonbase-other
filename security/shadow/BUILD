(

  touch *
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  if  module_installed  Linux-PAM;  then
    OPTS="$OPTS --with-libpam"
  fi
  OPTS="$OPTS --with-libcrack"

  default_build || return 1

  sedit 's|#CRACKLIB_DICTPATH.*$|CRACKLIB_DICTPATH /usr/share/dict/pw_dict|g' etc/login.defs*
  sedit 's/#MD5_CRYPT_ENAB.*$/MD5_CRYPT_ENAB yes/' etc/login.defs*

  for FILE in limits login.access login.defs defaults ; do
    [ -e /etc/$FILE ] || install etc/$FILE /etc/
  done
  [ -e /etc/securetty  ] || install $SCRIPT_DIRECTORY/securetty /etc/
  ln -sf /usr/sbin/vipw /usr/sbin/vigr &&
  install $SCRIPT_DIRECTORY/adduser /usr/sbin/ &&
  install $SCRIPT_DIRECTORY/deluser /usr/sbin/

) > $C_FIFO 2>&1
