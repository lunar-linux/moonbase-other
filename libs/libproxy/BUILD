(

  if in_depends $MODULE xulrunner; then
    XULRUNNER_VERSION=$(installed_version xulrunner)
    CFLAGS="$CFLAGS -I/usr/include/xulrunner-$XULRUNNER_VERSION/unstable"
  fi &&

  bad_flags "-Wl,-O1,--as-needed" &&
  bad_flags "-Wl,--as-needed" &&

  default_build

) > $C_FIFO 2>&1
