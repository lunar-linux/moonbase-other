(
    UDEV_EXTRAS="extras/ata_id  extras/cdrom_id extras/dasd_id \
                 extras/edd_id extras/firmware extras/floppy \
                 extras/rule_generator extras/run_directory \
                 extras/scsi_id extras/usb_id extras/path_id \
                 extras/volume_id"
  
    patch_it $SOURCE2 0  &&

    make EXTRAS="${UDEV_EXTRAS}"  &&
    prepare_install  &&
    make EXTRAS="${UDEV_EXTRAS}" install   &&


    # Deprecated .. but udevd still doesn't do what udevstart does
    install -m755 udevstart /sbin &&
    install -m644 udevstart.8 /usr/share/man/man8 &&
 
    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    mkdir -p /etc/udev/rules.d /etc/udev/scripts.d  &&

    install -m755 ${SCRIPT_DIRECTORY}/udev /etc/init.d/  		&&

    for script in ${SOURCE_DIRECTORY}/etc/udev/rules.d/*; do
      install -m644 ${script} /etc/udev/rules.d/;
    done &&
    
    install -m644 ${SOURCE_DIRECTORY}/etc/udev/gentoo/udev.rules \
		  /etc/udev/rules.d/50-udev.rules			&&
    install -m755 ${SOURCE_CACHE}/${SOURCE3} \
		  /etc/udev/scripts.d/raid-devfs.sh

) > $C_FIFO 2>&1
