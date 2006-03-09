(

  OPTS="$OPTS --bindir=/usr/libexec/xscreensaver"
  OPTS="$OPTS --with-configdir=/usr/share/xscreensaver/"

  default_build

  # If someone knows where these should/could go, please make them go there
  rm -f /cyclone.desktop /fieldlines.desktop /flocks.desktop /flux.desktop \
        /helios.desktop /plasma.desktop /skyrocket.desktop /solarwinds.desktop \
        /hyperspace.desktop	

  install -m0755 utils/rss-glx_install.pl $MODULE_PREFIX/bin/

) > $C_FIFO 2>&1
