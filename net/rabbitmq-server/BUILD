(
  add_priv_user rabbitmq:rabbitmq -d /var/lib/rabbitmq &&
  make &&
  prepare_install &&
  make install TARGET_DIR=/usr/lib/rabbitmq/lib/rabbitmq_server-${VERSION} \
               SBIN_DIR=/usr/lib/rabbitmq/bin \
               MAN_DIR=/usr/share/man &&

  install -p -D -m 0755 $SOURCE_CACHE/$SOURCE2 /usr/sbin/rabbitmqctl &&
  install -p -D -m 0755 $SOURCE_CACHE/$SOURCE2 /usr/sbin/rabbitmq-server &&
  install -p -D -m 0755 $SOURCE_CACHE/$SOURCE2 /usr/sbin/rabbitmq-multi &&
  install -o rabbitmq -g rabbitmq -m 750 -d /var/log/rabbitmq &&
  install -o rabbitmq -g rabbitmq -m 750 -d /var/lib/rabbitmq

) > $C_FIFO 2>&1
