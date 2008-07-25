(

    # add missing groups:
    add_priv_group dialout
    add_priv_group usb
    add_priv_group cdrw

    # create static nodes dir if missing
    mkdir -p /lib/udev/devices &&

    patch_it $SOURCE2 0 &&

    for DIR in `ls extras`; do EXTRAS+="extras/$DIR "; done &&
    sedit "s@^EXTRAS\ =@EXTRAS =$EXTRAS@" Makefile &&

    default_build &&

    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d &&

    install -m644 etc/udev/gentoo/* \
                  etc/udev/rules.d/* \
                  etc/udev/packages/* \
                 /etc/udev/rules.d
    install -m755 ${SOURCE_CACHE}/${SOURCE3} \
                  /etc/udev/scripts.d/raid-devfs.sh &&

    if [ "$WIPE_NET_DEV" == "y" ] ; then
      rm -f /etc/udev/rules.d/70-persistent-{cd,net}.rules
    fi &&

    mv -f /etc/udev/rules.d/40-gentoo.rules /etc/udev/rules.d/40-lunar.rules

) > $C_FIFO 2>&1
