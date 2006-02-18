(
    UDEV_EXTRAS="extras/ata_id  extras/cdrom_id extras/dasd_id \
                 extras/edd_id extras/firmware extras/floppy \
                 extras/run_directory extras/scsi_id extras/usb_id \
                 extras/volume_id" 

    patch_it $SOURCE2 0  &&
    patch_it $SOURCE3 0  &&
    patch_it $SOURCE4 0  &&

    make udevdir=/dev EXTRAS="${UDEV_EXTRAS}"  &&
    prepare_install  &&
    make udevdir=/dev EXTRAS="${UDEV_EXTRAS}" install  &&
 
    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d  &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d/  &&
    install -m755 ${SOURCE_DIRECTORY}/etc/udev/gentoo/udev.rules \
		  /etc/udev/rules.d/50-udev.rules  &&

    for script in ide-devfs.sh raid-devfs.sh scsi-devfs.sh 
    do
        install -m755 extras/${script} /etc/udev/scripts.d/
    done
     
) > $C_FIFO 2>&1
