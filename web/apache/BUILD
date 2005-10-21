(

  ./configure  --prefix=/usr                     \
               --sysconfdir=/etc/httpd           \
               --localstatedir=/var/lib/httpd    \
               --logfiledir=/var/log/httpd       \
               --proxycachedir=/var/cache/httpd  \
               --runtimedir=/var/run/httpd       \
               --enable-module=most              \
               --enable-shared=max               \
               --enable-module=auth_db           \
               --enable-module=mmap_static       \
               --disable-module=auth_dbm         \
               --with-layout=GNU                &&
  default_make

) > $C_FIFO 2>&1  &&

(

  if [ -e "/etc/init.d/apache.sh" ]; then
     rm -f /etc/init.d/apache.sh
     rm -f /etc/rc?.d/???apache.sh
  fi

)
