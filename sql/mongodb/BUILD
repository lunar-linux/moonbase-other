(
  add_priv_user mongodb:mongodb -d /var/lib/mongodb  &&

  scons all &&
  prepare_install &&
  scons --full --nostrip install --prefix=/usr &&

  for i in /var/{lib,log}/mongodb; do
    install -d $i -o mongodb -g mongodb -m 770
  done


) > $C_FIFO 2>&1
