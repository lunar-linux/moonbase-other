(

    # add missing groups:
    add_priv_group dialout
    add_priv_group usb
    add_priv_group cdrw

    # create static nodes dir if missing
    mkdir -p /lib/udev/devices  &&

    patch_it $SOURCE2 0 &&
    find $SOURCE_DIRECTORY/rules -type f -name '*.rules' -exec sed -i 's/uucp/dialout/g' {} \;  &&

    mv -f rules/gentoo/40-gentoo.rules rules/gentoo/40-lunar.rules  &&

    if [ "$WIPE_NET_DEV" == "y" ] ; then
       rm -f /etc/udev/rules.d/70-persistent-{cd,net}.rules
    fi  &&

    ./configure  --prefix=/usr       \
                 --exec-prefix=      \
                 --sysconfdir=/etc  &&
    default_make  &&

    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d  &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d  &&

    install -m755 ${SOURCE_CACHE}/${SOURCE3} \
                  /etc/udev/scripts.d/raid-devfs.sh

) > $C_FIFO 2>&1
