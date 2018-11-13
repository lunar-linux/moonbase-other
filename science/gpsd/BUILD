  scons prefix=/usr       \
        gpsd_group=uucp   \
        gpsd_user=gpsd    \
        $OPTS            &&

  prepare_install   &&
  scons install     &&

  if in_depends $MODULE udev; then
    scons udev-install
  fi &&

  if [ ! -f /etc/gpsd.conf ] ; then
    install -D -m644 packaging/rpm/httpd/gpsd.conf /etc/gpsd
  fi &&

  sed -e 's|/etc/default/gpsd|/etc/gpsd|' -i gpsd.hotplug -i systemd/*.service &&
  install -D -m755 gpsd.hotplug /usr/lib/udev/gpsd.hotplug &&

  install -D -m644 gpsd.rules /usr/lib/udev/rules.d/25-gpsd-usb.rules &&
  install -D -m644 packaging/X11/xgps.desktop /usr/share/applications/xgps.desktop &&
  install -D -m644 packaging/X11/xgpsspeed.desktop /usr/share/applications/xgpsspeed.desktop &&
  install -D -m644 packaging/X11/gpsd-logo.png /usr/share/gpsd/gpsd-logo.png
