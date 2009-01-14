(

  export CFLAGS="$CFLAGS -fPIC"

  if in_depends $MODULE qt3; then
    if module_installed qt3; then
      . /etc/profile.d/qt3.rc
      . /etc/profile.d/kde3.rc
#      sedit "s:/usr/lib/libqt-mt.so:/opt/lunar/qt/3/lib:g" vars.mk
    fi
  fi  &&

  default_build

) > $C_FIFO 2>&1
