(

  if module_installed qt3 ; then
    . /etc/profile.d/qt3.rc
    . /etc/profile.d/kde3.rc
  fi

# need to hack Makefile
  sedit "s/lqt/lqt-mt/" src/xcwcp/Makefile

  default_build

) > $C_FIFO 2>&1
