(

  add_priv_user www:www -s /bin/false -c "www"  &&

  ./configure  --prefix=/usr               \
   	       --libdir=/usr/lib/lighttpd  \
               $OPTS                      &&
  default_make                            &&

  if [ ! -f /etc/lighttpd/lighttpd.conf ];  then
    sedit 's:/www/pages/:/var/www/:g' doc/lighttpd.conf &&
    sedit 's:/www/logs/:/var/log/httpd/:g' doc/lighttpd.conf &&
    mkdir -p /etc/lighttpd &&
    install -m 644 doc/lighttpd.conf /etc/lighttpd
  fi

) > $C_FIFO 2>&1
