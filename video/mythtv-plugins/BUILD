(

  sedit "s:PREFIX = .*:PREFIX=/usr:" settings.pro &&
  sedit "s:#CONFIG += using_alsa:CONFIG += using_alsa:" settings.pro &&
  sedit "s:#ALSA_LIBS = -lasound:ALSA_LIBS = -lasound:" settings.pro &&
  sedit "s:QMAKE_CXXFLAGS_RELEASE = .*:QMAKE_CXXFLAGS_RELEASE = $CXXFLAGS:" settings.pro &&
  sedit "s:DEFINES += MMX:DEFINES += MMX SSE" &&

  . /etc/profile.d/qt3.rc &&
  ./configure --prefix=/usr        &&

  qmake mythplugins.pro                &&

  default_make

) > $C_FIFO 2>&1
