OPTS=" --prefix=/etc/httpd             \
       --sysconfdir=/etc/httpd/conf    \
       --exec-prefix=/usr              \
       --datadir=/var/www              \
       --sharedstatedir=/var/run/httpd \
       --localstatedir=/var            \
       --includedir=/usr/include/httpd \
       --enable-so                     \
       --enable-rewrite                \
       --enable-mime-magic             \
       --enable-exception-hook         \
       --enable-layout=GNU             \
       --enable-usertrack              \
       --with-apr=/usr                 \
       --with-apr-util=/usr            \
       $OPTS"                         &&

OPTS+=" --libexecdir=/usr/libexec/httpd/modules" &&

if [ "$USE_WORKER" == "n" ]; then
  OPTS+=" --with-mpm=prefork"
else
  OPTS+=" --with-mpm=worker"
fi &&

echo "CFLAGS=$CFLAGS" &&
echo "OPTS=$OPTS" &&

default_build &&

if [ ! -e /usr/sbin/httpsd ]; then
  ln -s /usr/sbin/httpd /usr/sbin/httpsd
fi
