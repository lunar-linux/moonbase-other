(

    patch_it $SOURCE2 1

    default_make
 
    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    install ${SCRIPT_DIRECTORY}/udev /etc/init.d/   

    UDEV_ETC_DIR=/etc/udev/
    install 99-udev.permissions ${UDEV_ETC_DIR}/permissions.d/  
    install 99-udev.rules       ${UDEV_ETC_DIR}/rules.d/  

    install -d ${SCRIPT_DIRECTORY}/scripts.d/ ${UDEV_ETC_DIR}  

) > $C_FIFO 2>&1
