(

  if in_depends $MODULE xulrunner; then
  CFLAGS="$CFLAGS -I/usr/include/xulrunner-$(installed_version xulrunner)/unstable"
  fi &&

  default_build

) > $C_FIFO 2>&1
