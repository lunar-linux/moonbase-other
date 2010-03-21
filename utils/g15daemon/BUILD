(
  PYMAJ=$(installed_version Python | cut -d. -f1-2) &&

  patch_it $SOURCE6 2 &&

  cd $SOURCE_DIRECTORY/lang-bindings &&
  tar xf perl-G15Daemon-0.2.tar.gz &&
  tar xf pyg15daemon-0.0.tar.bz2 &&
  cd $SOURCE_DIRECTORY/lang-bindings/G15Daemon-0.2 &&
  perl -f Makefile.PL &&
  make &&
  cd $SOURCE_DIRECTORY &&
  default_build &&
  
  [ -f /etc/config.d/g15daemon ] || install -m 644 $SOURCE_CACHE/$SOURCE3 /etc/config.d/g15daemon &&
  [ -f /etc/g15daemon.conf ] || install -m 644 $SOURCE_CACHE/$SOURCE4 /etc/g15daemon.conf &&
  
  install -m 644 $SOURCE_CACHE/$SOURCE2 /lib/udev/rules.d/ &&
  install -m 755 $SOURCE_CACHE/$SOURCE5 /usr/bin/g15daemon-hotplug &&
  
  # Install perl and python bindings
  cd $SOURCE_DIRECTORY/lang-bindings/G15Daemon-0.2 &&
  make install &&
  mkdir -p /usr/lib/python${PYMAJ}/site-packages/ &&
  install -m644 $SOURCE_DIRECTORY/lang-bindings/pyg15daemon/g15daemon.py /usr/lib/python${PYMAJ}/site-packages/ &&
  
  # Byte compile the python module
  python -O -c 'import g15daemon'
  
) > $C_FIFO 2>&1
