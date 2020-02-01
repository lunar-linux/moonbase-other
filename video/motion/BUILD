
  add_priv_user motion:motion -d / -s /usr/bin/false &&

  OPTS+=" --sysconfdir=/etc/" &&

  autoreconf -fi &&

  default_build &&

  install -D -m0644 $SCRIPT_DIRECTORY/motion.tmpfiles /usr/lib/tmpfiles.d/motion.conf &&
  install -D -m0644 $SCRIPT_DIRECTORY/motion.sysusers /usr/lib/sysusers.d/motion.conf &&

  if [ ! -f /etc/motion/motion.conf ] ; then
    install -Dm644 data/motion-dist.conf /etc/motion/motion.conf
  fi
