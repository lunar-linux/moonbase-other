(

  sedit  "s:getline:GetLine:"   src/support/htpasswd.c  src/support/htdigest.c  src/support/logresolve.c  &&

  ./configure  --prefix=/usr                     \
               --sysconfdir=/etc/httpd           \
               --localstatedir=/var/lib/httpd    \
               --logfiledir=/var/log/httpd       \
               --proxycachedir=/var/cache/httpd  \
               --runtimedir=/var/run/httpd       \
               --enable-module=most              \
               --enable-shared=max               \
               --enable-module=mmap_static       \
               --with-layout=GNU $OPTS          &&
  default_make  &&

  if [ -e "/etc/init.d/apache.sh" ]; then
     rm -f /etc/init.d/apache.sh
     rm -f /etc/rc?.d/???apache.sh
  fi

)
