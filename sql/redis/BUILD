add_priv_user redis:redis -G redis -d /var/lib/redis -s /bin/false &&

make &&
prepare_install &&
make PREFIX=/usr install &&

install -Dm644 redis.conf /etc/redis.conf &&
ln -sf redis-server /usr/bin/redis-sentinel &&
gather_docs COPYING
