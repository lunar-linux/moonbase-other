(

  if in_depends $MODULE xulrunner; then
    XULRUNNER_VERSION=$(installed_version xulrunner)
  # This CFLAGS setting fixes unable to find jsapi.h
    CFLAGS="$CFLAGS -I/usr/include/xulrunner-$XULRUNNER_VERSION/unstable"
  # This takes care of lunar fix reporting libmozjs.so not found.
    LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/xulrunner-devel-$XULRUNNER_VERSION/lib"
  # Done
  fi &&

  default_build

) > $C_FIFO 2>&1
