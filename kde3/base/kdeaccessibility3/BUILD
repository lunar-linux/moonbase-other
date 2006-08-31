(
 
  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  if module_installed gst-plugins; then
    OPTS="--enable-kttsd-gstreamer "$OPTS
  fi

  default_build
 
) > $C_FIFO 2>&1
