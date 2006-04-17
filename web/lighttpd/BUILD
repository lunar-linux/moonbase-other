(

  add_priv_user www:www -s /bin/false -c "www"  &&

  ./configure  --prefix=/usr               \
   	       --libdir=/usr/lib/lighttpd  \
               $OPTS                      &&
  default_make

) > $C_FIFO 2>&1
