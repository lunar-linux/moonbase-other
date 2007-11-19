(
    OPTS="$OPTS --disable-docbook-docs --with-pid-file=var/run/hald.pid \
                --with-backend=linux --without-macbookpro \
                --enable-umount-helper --disable-parted"

    # This is a temp workaround until hal realizes usb.ids can also be
    # wrapped in an archive

    if [ -e /usr/share/usb.ids.gz ] ; then
      gunzip -c /usr/share/usb.ids.gz > /usr/share/usb.ids
    fi &&

    default_build  &&

    mkdir -p /usr/share/applications &&
    install -m644 $SOURCE_CACHE/$SOURCE2 /usr/share/applications/ 

) > $C_FIFO 2>&1
