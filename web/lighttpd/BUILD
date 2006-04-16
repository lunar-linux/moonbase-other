(

  add_priv_user www:www -s /bin/false -c "www"  &&

  ./configure  --prefix=/usr               \
   	       --libdir=/usr/lib/lighttpd  \
               $OPTS                      &&
  default_make  &&

  if [ ! -d /etc/lighttpd ]; then
    mkdir /etc/lighttpd
  fi

  if [ ! -f /etc/lighttpd/lighttpd.conf ];  then
    install -m 644 doc/lighttpd.conf /etc/lighttpd
  fi

) > $C_FIFO 2>&1
