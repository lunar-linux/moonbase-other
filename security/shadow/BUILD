(

  if  module_installed  Linux-PAM;  then
    WITH_LIBPAM="--with-libpam"
  fi

  sedit  "s/-lpam_misc/-lpam_misc -lpam/"  configure

  sedit  "s/ln -s/ln -sf/g"  configure
  sedit  "s/ln -s/ln -sf/g"  aclocal.m4

  sedit "s/CRACKLIB_DICTPATH	\/var\/cache\/cracklib\/cracklib_dict/CRACKLIB_DICTPATH	\/usr\/share\/dict\/pw_dict.pwd/" etc/login.defs.linux
  sedit "s/#MD5_CRYPT_ENAB	no/MD5_CRYPT_ENAB	yes/" etc/login.defs.linux

  touch *

  ./configure  --build=$BUILD        \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --with-libcrack       \
               $WITH_LIBPAM          \
               $OPTS                 &&
 
  make                               &&
  prepare_install                    &&
  make    install

) > $C_FIFO 2>&1  && (


  cd  etc

  [  -e  /etc/limits           ]  ||  cp  limits            /etc
  [  -e  /etc/login.access     ]  ||  cp  login.access      /etc
  [  -e  /etc/login.defs.linux ]  ||  cp  login.defs.linux  /etc
  [  -e  /etc/login.defs       ]  ||  cp  login.defs.linux  /etc/login.defs
  [  -e  /etc/defaults         ]  ||  mkdir                 /etc/defaults
  [  -f  /usr/sbin/vigr        ]  ||  ln  /usr/sbin/vipw    /usr/sbin/vigr

  sedit "s/CRACKLIB_DICTPATH	\/var\/cache\/cracklib\/cracklib_dict/CRACKLIB_DICTPATH	\/usr\/share\/dict\/pw_dict.pwd/" /etc/login.defs
  sedit "s/#MD5_CRYPT_ENAB	no/MD5_CRYPT_ENAB	yes/" /etc/login.defs

  cp  $SCRIPT_DIRECTORY/adduser  /usr/sbin
  cp  $SCRIPT_DIRECTORY/deluser  /usr/sbin

)
