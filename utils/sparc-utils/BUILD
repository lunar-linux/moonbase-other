( 

  patch_it  $SOURCE_CACHE/$SOURCE2 1 &&
  cd elftoaout-2.3 && make &&  cd .. &&
  cd src && gcc -O2 -s -o piggyback piggyback.c && gcc -O2 -s -o piggyback64 piggyback64.c && cd .. &&
  cd prtconf-1.3 && make all && cd .. &&
  cd audioctl-1.3 && make && cd .. &&
  prepare_install &&
  install -s elftoaout-2.3/elftoaout /usr/bin &&
  install -s src/piggyback src/piggyback64 /usr/bin &&
  install -s prtconf-1.3/prtconf /usr/sbin/prtconf &&
  install -s prtconf-1.3/eeprom /usr/sbin/eeprom &&
  install -s audioctl-1.3/audioctl /usr/bin &&
  install -d -m 755 /etc /etc/init.d /etc/default &&
  install -m 755 debian/audioctl.def /etc/default/audioctl &&
  cp audioctl-1.3/audioctl.1 /usr/share/man/man1 &&
  cp elftoaout-2.3/elftoaout.1 /usr/share/man/man1 &&
  cp prtconf-1.3/prtconf.8 /usr/share/man/man8 &&
  cp prtconf-1.3/eeprom.8 /usr/share/man/man8 &&
  cp debian/piggyback.1 /usr/share/man/man1 &&
  cp debian/piggyback64.1 /usr/share/man/man1
  
) > $C_FIFO
