(

    OPTS+=" --with-system-nspr --enable-threadsafe "
    cd js/src
    default_build

    install -m 0755 shell/js /usr/bin

) > $C_FIFO 2>&1
