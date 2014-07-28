OPTS+=" --release --use-system-boost --use-system-pcre" &&

add_priv_user mongodb:mongodb -d /var/lib/mongodb  &&

scons -j${MAKES:=1} $OPTS all &&
prepare_install &&
scons -j${MAKES:=1} $OPTS install --full --prefix=/usr &&

if [ ! -f /etc/mongodb.conf ]; then
  install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/mongodb.conf
fi &&

if module_installed systemd; then
    # Manually create /run/mongodb now, systemd tmpfiles.d will handle this next boot
  if [ ! -d /run/mongodb ]; then
    install -d -o mongodb -g root -m 0755 /run/mongodb
  fi
fi &&

for i in /var/{lib,log}/mongodb; do
  install -d $i -o mongodb -g mongodb -m 770
done
