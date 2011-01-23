(

  mv doc/example.conf doc/example.services.conf  &&

  sedit "s:example.conf:example.services.conf:" Makefile.in  &&

  OPTS+=" --prefix=/opt/lunar/ratbox \
              --sysconfdir=/etc/ratbox \
              --with-logdir=/var/log/ratbox \
              --with-rundir=/var/run \
              --with-nicklen=18 \
              --with-topiclen=360 \
              --with-userreglen=18 \
              --enable-sqlite3=/usr"  &&

  default_build

) > $C_FIFO 2>&1
