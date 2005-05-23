(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  if  module_installed  Linux-PAM;  then
    WITH_LIBPAM="--with-libpam"
  fi

  sedit "s/CRACKLIB_DICTPATH    \/var\/cache\/cracklib\/cracklib_dict/CRACKLIB_DICTPATH \/usr\/share\/dict\/pw_dict/" etc/login.defs.linux
  sedit "s/#MD5_CRYPT_ENAB      no/MD5_CRYPT_ENAB       yes/" etc/login.defs.linux

  touch *

  ./configure  --build=$BUILD        \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --with-libcrack       \
               $WITH_LIBPAM          \
               $OPTS                &&

  default_make || return 1

  for FILE in limits login.access login.defs.linux defaults ; do
    [ -e /etc/$FILE ] || install etc/$FILE /etc/
  done
  [ -e /etc/login.defs ] || install etc/login.defs.linux /etc/login.defs
  [ -e /etc/securetty  ] || install $SCRIPT_DIRECTORY/securetty /etc/
  ln -sf /usr/sbin/vipw /usr/sbin/vigr &&
  install $SCRIPT_DIRECTORY/adduser /usr/sbin/ &&
  install $SCRIPT_DIRECTORY/deluser /usr/sbin/ &&

  sedit "s/CRACKLIB_DICTPATH    \/var\/cache\/cracklib\/cracklib_dict/CRACKLIB_DICTPATH \/usr\/share\/dict\/pw_dict/" /etc/login.defs
  sedit "s/#MD5_CRYPT_ENAB      no/MD5_CRYPT_ENAB       yes/" /etc/login.defs

) > $C_FIFO 2>&1
