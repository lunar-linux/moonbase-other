(

  /usr/bin/phpize  &&

  OPTS+=" --enable-xcache \
              --enable-xcache-optimizer"  &&

  default_build  &&

  cat xcache.ini >> /etc/xcache.ini

) > $C_FIFO 2>&1
