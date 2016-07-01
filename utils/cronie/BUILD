aclocal     &&
autoheader  &&
automake -a &&
autoconf    &&

OPTS+=" --exec-prefix=/usr \
        --enable-anacron   \
        --with-inotify"   &&

default_build &&

chmod 6711 /usr/bin/crontab &&

[ -d /var/spool/cron ] || install -d -m 0700 /var/spool/cron
