(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  if module_installed apr ; then
    OPTS="$OPTS --with-apr-config=/usr/bin/apr-1-config --with-apu-config=/usr/bin/apu-1-config"
  fi

  sedit "s:-ldb4:-ldb-4:" configure.in  &&

  default_build

) > $C_FIFO 2>&1
