(

  if  module_installed  Linux-PAM;  then
    WITH_PAM="--with-pam"
  fi

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --with-everything        \
               $WITH_PAM                \
               $OPTS                    &&

  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1  &&  (


  if    [  !  -f  /etc/ftpusers  ]
  then  cp  pam/ftpusers  /etc
  fi

)
