(

    patch_it $SOURCE2 0        &&

    make udevdir=/dev          &&
    prepare_install            &&
    make udevdir=/dev install  &&
 
    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    install ${SCRIPT_DIRECTORY}/udev /etc/init.d/  &&

    install ${SCRIPT_DIRECTORY}/49-udev.rules /etc/udev/rules.d/  &&
    mkdir -p /etc/udev/scripts.d/                         
    install extras/{ide-devfs.sh,scsi-devfs.sh,dvb.sh} /etc/udev/scripts.d/
     
) > $C_FIFO 2>&1
