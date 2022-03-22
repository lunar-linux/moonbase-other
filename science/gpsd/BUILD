  sedit 's:default::' gpsd.hotplug systemd/*.service.in &&

  export LINKFLAGS="${LDFLAGS}" &&

  scons prefix=/usr       \
        gpsd_group=uucp   \
        gpsd_user=gpsd    \
        python_libdir=/usr/lib/python`lvu version python|cut -d"." -f1-2` \
        $OPTS            &&
  scons build &&

  prepare_install   &&
  scons install     &&

  if in_depends $MODULE udev; then
    scons udev-install
  fi &&

  install -D -m755 gpsd.hotplug /usr/lib/udev/gpsd.hotplug &&

  install -D -m644 gpsd-$VERSION/gpsd.rules /usr/lib/udev/rules.d/25-gpsd-usb.rules &&
  install -D -m644 gpsd-$VERSION/packaging/X11/xgps.desktop /usr/share/applications/xgps.desktop &&
  install -D -m644 gpsd-$VERSION/packaging/X11/xgpsspeed.desktop /usr/share/applications/xgpsspeed.desktop &&
  install -D -m644 gpsd-$VERSION/packaging/X11/gpsd-logo.png /usr/share/gpsd/gpsd-logo.png
