(

  if module_installed Linux-PAM;  then
    OPTS+=" --with-pam"
  fi

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --with-everything        \
               $OPTS                   &&
  default_make  &&
  gather_docs *.conf  &&
  if [ ! -f /etc/ftpusers ]; then
    cp pam/ftpusers /etc
  fi

) > $C_FIFO 2>&1
