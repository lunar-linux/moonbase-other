(

  if    module_installed  Linux-PAM
  then  WITH_PAM="--with-pam=yes"
  else  WITH_PAM="--with-pam=no"
  fi

  EDITOR=`which $EDITOR  2>/dev/null`  ||
  EDITOR=`which nano`

  groupadd fcron
  useradd -g fcron fcron

  sedit  "s/-O2/$CFLAGS/"  configure

  ./configure  --prefix=/usr          \
               --with-answer-all=no   \
	       --without-sendmail     \
               $WITH_PAM              \
               --with-editor=$EDITOR  &&
  make                                &&
  prepare_install                     &&
  make    install


  if [ -e /etc/init.d/fcron.sh ]; then
    rm -f /etc/init.d/fcron.sh
    rm -f /etc/rc?.d/???fcron.sh
  fi

  [ -e /etc/fcron.allow ]  ||  cp  files/fcron.allow  /etc
  [ -e /etc/fcron.deny  ]  ||  cp  files/fcron.deny   /etc

)  > $C_FIFO 2>&1
