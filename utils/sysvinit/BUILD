(

  make  -C src          &&
  prepare_install       &&
  make  -C src install  &&
  install -m0755 $SCRIPT_DIRECTORY/service /sbin/service &&
  mkdir -p /etc/rc0.d /etc/rc1.d /etc/rc2.d /etc/rc3.d /etc/rc4.d /etc/rc5.d /etc/rc6.d /etc/rcS.d /etc/init.d /var/run /var/log ||
	# error out here in case of failure
	exit 1
	
	# the rest should be safe now:
	if [ ! -e /etc/inittab ] ; then
	  install -m0600 $SCRIPT_DIRECTORY/inittab /etc/
	fi
	
	for SCRIPT in halt rc rcS reboot signals ; do
	  if [ ! -e /etc/init.d/$SCRIPT ] ; then
		  install -m0700 $SCRIPT_DIRECTORY/init.d/$SCRIPT /etc/init.d/
		fi
	done
	
	ln -sf ../init.d/signals /etc/rc0.d/S80signals
	ln -sf ../init.d/halt    /etc/rc0.d/S90halt
	ln -sf ../init.d/signals /etc/rc6.d/S80signals
	ln -sf ../init.d/reboot  /etc/rc6.d/S90reboot

	touch     /var/run/utmp /var/log/wtmp /var/log/btmp /var/log/lastlog
	chmod 644 /var/run/utmp /var/log/wtmp /var/log/btmp /var/log/lastlog

) > $C_FIFO 2>&1
