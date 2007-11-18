(

    # add missing groups:
    add_priv_group dialout
    add_priv_group usb
    add_priv_group cdrw

    UDEV_EXTRAS="extras/ata_id  extras/collect extras/firmware \
                 extras/path_id extras/scsi_id extras/volume_id \
                 extras/cdrom_id extras/edd_id extras/floppy \
                 extras/rule_generator extras/usb_id"

    patch_it $SOURCE2 0 &&

    make EXTRAS="${UDEV_EXTRAS}" &&
    prepare_install &&
    make EXTRAS="${UDEV_EXTRAS}" install &&


    # Deprecated .. but udevd still doesn't do what udevstart does
    install -m755 udevstart /sbin/ &&
    install -m644 udevstart.8 /usr/share/man/man8/ &&

    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d/ &&

    # We provide our own default set of rules
    rm -f /etc/udev/rules.d/50-udev-default.rules &&

    install -m644 ${SOURCE_DIRECTORY}/etc/udev/gentoo/50-udev.rules \
                  /etc/udev/rules.d/50-udev.rules &&
    install -m755 ${SOURCE_CACHE}/${SOURCE3} \
                  /etc/udev/scripts.d/raid-devfs.sh &&

    # We need to remove those in order to get a clean start
    rm -f /etc/udev/rules.d/70-persistent-{cd,net}.rules

) > $C_FIFO 2>&1
