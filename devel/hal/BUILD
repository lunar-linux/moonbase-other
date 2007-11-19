(

    # fixes an issue with incorrect usage of dbus in error conditions
    # mainly affects hald-addon-storage when polling cd drives
    # sedit 's:(dbus_error_is_set (error):(error != NULL \&\& dbus_error_is_set (error):g' libhal/libhal.c  &&

    # these sedits fix some build time errors
    # sedit 's:use_macbookpro:with_macbookpro:g' configure  &&

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
