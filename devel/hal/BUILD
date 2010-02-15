(

    OPTS="$OPTS --disable-docbook-docs --with-pid-file=/var/run/hald.pid              \
                --with-backend=linux --enable-umount-helper --with-udev-prefix=/lib" &&

    # This is a temp workaround until hal realizes usb.ids can also be
    # wrapped in an archive

    if [ -e /usr/share/usb.ids.gz ] ; then
      gunzip -c /usr/share/usb.ids.gz > /usr/share/usb.ids
    fi &&

    default_build

) > $C_FIFO 2>&1
