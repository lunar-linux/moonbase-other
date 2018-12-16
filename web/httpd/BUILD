add_priv_user http:http -d /var/empty -s /bin/false &&

# set default user
sedit 's#User daemon#User http#'   docs/conf/httpd.conf.in &&
sedit 's#Group daemon#Group http#' docs/conf/httpd.conf.in &&

OPTS=" --datadir=/srv/http              \
       --localstatedir=/var             \
       --sharedstatedir=/run/httpd      \
       --includedir=/usr/include/httpd  \
       --sysconfdir=/etc/httpd/conf     \
       --enable-so                      \
       --enable-rewrite                 \
       --enable-usertrack               \
       --enable-mime-magic              \
       --enable-layout=GNU              \
       --enable-layout=Lunar            \
       --enable-exception-hook          \
       --with-apr=/usr/bin/apr-1-config \
       --with-apr-util=/usr/bin/apu-1-config" &&

cat $SCRIPT_DIRECTORY/lunar.layout >> config.layout &&

if [ "$USE_WORKER" == "n" ]; then
  OPTS+=" --with-mpm=prefork"
else
  OPTS+=" --with-mpm=worker"
fi

echo "CFLAGS=$CFLAGS" &&
echo "OPTS=$OPTS" &&

default_build &&

chown http:http /srv/http /var/log/httpd &&

if [ ! -e /usr/sbin/httpsd ]; then
  ln -s /usr/bin/httpd /usr/bin/httpsd
fi