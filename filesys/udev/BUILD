(

    sedit 's:^EXTRAS =:EXTRAS = extras/ata_id extras/cdrom_id extras/dasd_id extras/edd_id extras/firmware extras/floppy extras/run_directory extras/scsi_id extras/usb_id extras/volume_id:' Makefile &&

    patch_it $SOURCE2 0  &&
    patch_it $SOURCE3 0  &&

    default_make &&

    # Deprecated .. but udevd still doesn't do what udevstart does
    # udevsend only provided for legacy purposes
    install -m755 udevsend udevstart /sbin &&
    install -m644 udevsend.8 udevstart.8 /usr/share/man/man8 &&
 
    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d  &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d/  		&&
    install -m644 ${SOURCE_CACHE}/${SOURCE4} /etc/udev/rules.d/		 		&&
    install -m644 ${SOURCE_DIRECTORY}/etc/udev/gentoo/udev.rules \
		  /etc/udev/rules.d/50-udev.rules  			&&

    for script in ide-devfs.sh raid-devfs.sh scsi-devfs.sh 
    do
        install -m755 extras/${script} /etc/udev/scripts.d/
    done
     
) > $C_FIFO 2>&1
