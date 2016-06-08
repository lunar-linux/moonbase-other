OPTS+=" --with-check \
        --with-pidfile=/run/radvd.pid"

default_build &&

if [ ! -e /etc/radvd.conf ]; then
  install -Dm 644 radvd.conf.example /etc/radvd.conf
fi
