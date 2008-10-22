(
    patch -p1 < $SOURCE_CACHE/$SOURCE2  &&
    echo /usr > conf-home               &&
    make                                &&

    prepare_install                     &&

    if [[ ! -d /usr/bin ]]
    then
        mkdir -p /usr/bin
    fi                                  &&
    make setup check

) > $C_FIFO 2>&1
