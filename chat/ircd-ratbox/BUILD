(

  sedit "s:ETCPATH \"/ircd.pid\":\"/var/run/ircd.pid\":" include/config.h  &&
  sedit "66,73d" help/Makefile.in  &&
  sedit "149,155d" modules/Makefile.in  &&

  OPTS+=" --prefix=/opt/lunar/ratbox \
              --with-confdir=/etc/ratbox \
              --with-logdir=/var/log/ratbox \
              --with-nicklen=18 \
              --with-topiclen=360 \
              --enable-ipv6"  &&

  default_build

) > $C_FIFO 2>&1
