(

  default_build &&

  cd plugin/auth-pam &&
  make &&

  mkdir -p /usr/lib/$MODULE &&
  install -m755 openvpn-auth-pam.so /usr/lib/$MODULE/

) > $C_FIFO 2>&1
