(
  add_priv_user mongodb:mongodb -d /var/lib/mongodb  &&

  scons -j${MAKES:=1} all --full &&
  prepare_install &&
  scons -j${MAKES:=1} install --full --prefix=/usr &&

  [ -f /etc/mongodb.conf ] || install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/mongodb.conf &&

  for i in /var/{lib,log}/mongodb; do
    install -d $i -o mongodb -g mongodb -m 770
  done
) > $C_FIFO 2>&1
