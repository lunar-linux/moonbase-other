(

  unpack $SOURCE2 &&

  sedit 's:@prefix@:/usr:' ndesk-dbus-1.0.pc.in  &&
  mv ndesk-dbus-1.0.pc.in ndesk-dbus-1.0.pc      &&

  cd dbus-sharp-glib-0.3 &&
  sedit 's:@prefix@:/usr:'   ndesk-dbus-glib-1.0.pc.in  &&
  sedit 's:mono/lib/:mono/:' ndesk-dbus-glib-1.0.pc.in  &&
  mv ndesk-dbus-glib-1.0.pc.in ndesk-dbus-glib-1.0.pc   &&
  cd ..  &&

  make  &&
  cd dbus-sharp-glib-0.3  &&
  make DBUS_SHARP_PREFIX=$SOURCE_DIRECTORY  &&
  cd ..  &&

  prepare_install  &&

  cd src  &&
  make prefix=/usr install  &&
  cd ..  &&
  install -D ndesk-dbus-1.0.pc /usr/lib/pkgconfig  &&

  cd dbus-sharp-glib-0.3/glib &&
  make prefix=/usr DBUS_SHARP_PREFIX=$SOURCE_DIRECTORY install
  cd ..  &&
  install -D ndesk-dbus-glib-1.0.pc /usr/lib/pkgconfig

) > $C_FIFO 2>&1
