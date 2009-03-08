(

  if in_depends $MODULE xulrunner; then
    XULRUNNER_VERSION=$(installed_version xulrunner)
    CFLAGS="$CFLAGS -I/usr/include/xulrunner-$XULRUNNER_VERSION/unstable"
  fi &&

  default_build

) > $C_FIFO 2>&1
