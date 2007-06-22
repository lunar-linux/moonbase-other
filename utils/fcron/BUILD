(

  EDITOR=`which $EDITOR  2>/dev/null`  ||
  EDITOR=`which nano`

  add_priv_user fcron:fcron

  sedit  "s/-O2/$CFLAGS/"  configure

  OPTS="$OPTS --prefix=/usr \
	      --sysconfdir=/etc \
	      --with-piddir=/var/run \
              --with-answer-all=no \
	      --without-sendmail \
	      --with-editor=$EDITOR"  &&

  default_build  &&

  if [ -e /etc/init.d/fcron.sh ]; then
    rm -f /etc/init.d/fcron.sh
    rm -f /etc/rc?.d/???fcron.sh
  fi
  if [ -e /etc/init.d/crond ]; then
    rm -f /etc/init.d/crond
    rm -f /etc/rc?.d/???crond
  fi

  [ -e /etc/fcron.allow ]  ||  cp  files/fcron.allow  /etc
  [ -e /etc/fcron.deny  ]  ||  cp  files/fcron.deny   /etc

)  > $C_FIFO 2>&1
