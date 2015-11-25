
  sedit "271,278d" configure.ac &&

  autoreconf -fi &&

  OPTS+=" --enable-datahub --enable-fts --enable-explain-queries \
          --with-session-bus-services-dir=/usr/share/dbus-1/services" &&

  default_build
