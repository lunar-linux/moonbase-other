(

    patch_it $SOURCE2 0  &&

    make udevdir=/dev EXTRAS=extras/run_directory  &&
    prepare_install  &&
    make udevdir=/dev EXTRAS=extras/run_directory install  &&

    # install the init.d script
    # we cannot use automagic install via coretools
    # since the udev script would be linked from rcX.d
    # and would interfere with boot/{reboot,halt}
    install ${SCRIPT_DIRECTORY}/udev /etc/init.d/  &&

    install ${SCRIPT_DIRECTORY}/49-udev.rules /etc/udev/rules.d/  &&

    # compability patch included by Zbigniew 'zbiggy' Luszpinski  <zbiggy@o2.pl>
    if ! grep -q 'ENV{UDEVD_EVENT}=="1", RUN+="/sbin/udev_run_hotplugd"' /etc/udev/rules.d/50-udev.rules; then
    echo 'ENV{UDEVD_EVENT}=="1", RUN+="/sbin/udev_run_hotplugd"' >> /etc/udev/rules.d/50-udev.rules
    fi
    mkdir -p /etc/udev/scripts.d/                          
    for script in ide-devfs.sh scsi-devfs.sh dvb.sh raid-devfs.sh
    do
        install extras/${script} /etc/udev/scripts.d/
    done

) > $C_FIFO 2>&1
