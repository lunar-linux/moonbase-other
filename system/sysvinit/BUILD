(

  # mountpoint is provided now by util-linux so do not install it
  sedit 's# mountpoint\(.1 \)*# #' src/Makefile &&

  make -C src          &&
  prepare_install      &&
  make -C src install  &&
  install -m0755 $SCRIPT_DIRECTORY/service /sbin/service  &&
  mkdir -p /etc/rc{S,0,1,2,3,4,5,6}.d /etc/init.d /var/{run,log}  &&

  # the rest should be safe now:
  if [ ! -e /etc/inittab ] ; then
    install -m0600 $SCRIPT_DIRECTORY/inittab /etc/
  fi  &&

  for SCRIPT in halt rc rcS reboot signals bootmisc ; do
    if [ ! -e /etc/init.d/$SCRIPT ] ; then
      install -m0700 $SCRIPT_DIRECTORY/init.d/$SCRIPT /etc/init.d/
    fi
  done  &&

  # K98signals terminates apps, before K99mount performs unmounting
  ln -sf ../init.d/signals  /etc/rc0.d/K98signals   &&
  ln -sf ../init.d/halt     /etc/rc0.d/S90halt      &&
  ln -sf ../init.d/bootmisc /etc/rcS.d/S99bootmisc  &&
  ln -sf ../init.d/signals  /etc/rc6.d/K98signals   &&
  ln -sf ../init.d/reboot   /etc/rc6.d/S90reboot    &&

  # Remove old symlinks
  rm -f /etc/rc{0,6}.d/S80signals  &&

  touch     /var/run/utmp /var/log/{w,b}tmp /var/log/lastlog  &&
  chmod 644 /var/run/utmp /var/log/wtmp /var/log/lastlog      &&
  chmod 600 /var/log/btmp

) > $C_FIFO 2>&1
