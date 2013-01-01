(

# Its config.sub is to ancient for current detection. Use the system.
  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY &&

  patch_it $SOURCE2 1 &&
  sedit "s:usr/man:usr/share/man:g" Makefile.in &&

  sed -i "26i #undef TIOCGHAYESESP" setserial.c &&

  default_build  &&

  install -m 700 rc.serial /etc/init.d/serial.sh     &&
  ln -sf /etc/init.d/serial.sh /etc/rcS.d/S99serial  &&
  ln -sf /etc/init.d/serial.sh /etc/rc0.d/K00serial  &&
  ln -sf /etc/init.d/serial.sh /etc/rc6.d/K00serial  &&
  if [ ! -f /etc/serial.conf ]; then
    install -m 644 serial.conf /etc/
  fi

) > $C_FIFO 2>&1
