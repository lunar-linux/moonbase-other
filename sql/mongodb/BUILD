(
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&

  add_priv_user mongodb:mongodb -d /var/lib/mongodb  &&

  scons -j${MAKES:=1} --sharedclient . &&
  prepare_install &&
  scons -j${MAKES:=1} install --sharedclient --full --prefix=/usr &&

  rm -f /usr/lib/libmongoclient.a &&

  [ -f /etc/mongodb.conf ] || install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/mongodb.conf &&

  if module_installed systemd; then
    # Manually create /run/mongodb now, systemd tmpfiles.d will handle this next boot
    [ -d /run/mongodb ] || install -d -o mongodb -g root -m 0755 /run/mongodb
  fi &&

  for i in /var/{lib,log}/mongodb; do
    install -d $i -o mongodb -g mongodb -m 770
  done
) > $C_FIFO 2>&1
