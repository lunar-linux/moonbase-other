(

  # fixes a typo which causes a build error
  sedit 's:\+  reader\.Value:reader\.Value:' Filters/FilterOpenOffice.cs  &&

  default_build  &&

  if module_installed firefox ; then
    mkdir -p /usr/share/beagle
    cp mozilla-extension/beagle.xpi /usr/share/beagle/
  fi

) > $C_FIFO 2>&1
