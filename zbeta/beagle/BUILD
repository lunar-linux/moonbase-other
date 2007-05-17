(

  default_build  &&

  if module_installed firefox ; then
    mkdir -p /usr/share/beagle
    cp mozilla-extension/beagle.xpi /usr/share/beagle/
  fi

) > $C_FIFO 2>&1
