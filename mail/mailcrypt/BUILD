(

  export MCRYPT_DIR=/usr/share/emacs/site-lisp/mailcrypt  &&
  ./configure                                             &&
  make                                                    &&
  prepare_install                                         &&
  make lispdir=$MCRYPT_DIR infodir=/usr/info install 

) > $C_FIFO 2>&1
