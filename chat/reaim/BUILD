(
    cd $SOURCE_DIRECTORY           &&
    make                           &&
    prepare_install                &&
    cp reaim /usr/sbin             &&
    cp reaim.8 /usr/share/man/man8 &&

    if [ ! -e /etc/config.d/reaim ]; then
       cp $SCRIPT_DIRECTORY/reaim /etc/config.d/reaim
    fi;
) > $C_FIFO
