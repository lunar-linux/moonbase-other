(
    ./configure --with-gecko-sdk=$SOURCE_DIRECTORY/gecko-sdk	&&
    make                                  &&
    prepare_install                       &&
    mkdir -p /opt/lunar/plugins
    install mplayerplug-in.so mplayerplug-in.xpt /opt/lunar/plugins 

) > $C_FIFO 2>&1
