(

  if  module_installed  Linux-PAM;  then
    ENABLE_PAM="--enable-pam"
  fi

  ./configure  --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
               --mandir=/usr/share/man \
               $ENABLE_PAM             \
               $OPTS                 &&
  default_make

) > $C_FIFO 2>&1
