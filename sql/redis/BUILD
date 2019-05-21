add_priv_user redis:redis -G redis -d /var/lib/redis -s /bin/false &&

make &&
prepare_install &&
make PREFIX=/usr install &&

install -Dm644 redis.conf /etc/redis.conf &&
ln -sf redis-server /usr/bin/redis-sentinel &&

if module_installed systemd; then
   install -Dm644 $SCRIPT_DIRECTORY/sysusers.d/redis.conf /usr/lib/sysusers.d/
  #install -Dm644 $SCRIPT_DIRECTORY/tmpfiles.d/redis.conf /usr/lib/tmpfiles.d/
fi &&

gather_docs COPYING
