(

  make -C src          &&
  prepare_install      &&
  make -C src install  &&
  install -m0755 $SCRIPT_DIRECTORY/service /sbin/service &&
  mkdir -p /etc/rc{S,0,1,2,3,4,5,6}.d /etc/init.d /var/{run,log} ||
  # error out here in case of failure
  exit 1
	
  # the rest should be safe now:
  if [ ! -e /etc/inittab ] ; then
    install -m0600 $SCRIPT_DIRECTORY/inittab /etc/
  fi
	
  for SCRIPT in halt rc rcS reboot signals bootmisc ; do
    if [ ! -e /etc/init.d/$SCRIPT ] ; then
      install -m0700 $SCRIPT_DIRECTORY/init.d/$SCRIPT /etc/init.d/
    fi
  done
	
  ln -sf ../init.d/signals  /etc/rc0.d/S80signals
  ln -sf ../init.d/halt     /etc/rc0.d/S90halt
  ln -sf ../init.d/bootmisc /etc/rc0.d/S99bootmisc
  ln -sf ../init.d/signals  /etc/rc6.d/S80signals
  ln -sf ../init.d/reboot   /etc/rc6.d/S90reboot

  touch     /var/run/utmp /var/log/{w,b}tmp /var/log/lastlog
  chmod 644 /var/run/utmp /var/log/{w,b}tmp /var/log/lastlog

) > $C_FIFO 2>&1
