(

    patch_it $SOURCE2 1 					&&
  
#    sedit "s:prefix}/udev:prefix}/dev:"  Makefile  &&
    default_make						&&
 
    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    install ${SCRIPT_DIRECTORY}/udev /etc/init.d/   		&&

    UDEV_ETC_DIR=/etc/udev/					&&
    mkdir -p ${UDEV_ETC_DIR}/scripts.d				&&
    install 99-udev.permissions ${UDEV_ETC_DIR}/permissions.d/  &&
    install 99-udev.rules       ${UDEV_ETC_DIR}/rules.d/  	&&
    install scripts.d/*         ${UDEV_ETC_DIR}/scripts.d/

) > $C_FIFO 2>&1
