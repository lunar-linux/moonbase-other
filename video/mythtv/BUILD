(

  sedit "s:PREFIX = .*:PREFIX=/usr:" settings.pro
  sedit "s:#CONFIG += using_alsa:CONFIG += using_alsa:" settings.pro
  sedit "s:#ALSA_LIBS = -lasound:ALSA_LIBS = -lasound:" settings.pro
  sedit "s:QMAKE_CXXFLAGS_RELEASE = .*:QMAKE_CXXFLAGS_RELEASE = $CXXFLAGS:" settings.pro
  sedit "s:DEFINES += MMX:DEFINES += MMX SSE"

  ./configure --prefix=/usr	&&

  qmake mythtv.pro		&&

  default_make			&&

  cp $SCRIPT_DIRECTORY/mythfilldatabasecron /usr/bin/ &&
  chmod 755 /usr/bin/mythfilldatabasecron &&
  install database/mc.sql /usr/share/mythtv/

) > $C_FIFO 2>&1
