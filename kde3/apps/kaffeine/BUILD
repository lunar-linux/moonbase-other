(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  # Workaround outdated Lunar kernel headers
  cp -f /usr/include/linux/dvb/frontend.h /usr/include/linux/dvb/frontend.h.bak &&
  cp -f /usr/src/linux/include/linux/dvb/frontend.h /usr/include/linux/dvb &&
  default_build &&
  cp -f /usr/include/linux/dvb/frontend.h.bak /usr/include/linux/dvb/frontend.h &&
  rm -f /usr/include/linux/dvb/frontend.h.bak

) > $C_FIFO 2>&1
