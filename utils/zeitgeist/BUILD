
  sedit "271,278d" configure.ac &&

  sedit "s:zeitgeist-daemon:zeitgeist-daemon -r:" data/org.gnome.zeitgeist.service.in &&

  autoreconf -fi &&

  OPTS+=" --enable-datahub --enable-fts --enable-explain-queries \
          --with-session-bus-services-dir=/usr/share/dbus-1/services" &&

  default_build
