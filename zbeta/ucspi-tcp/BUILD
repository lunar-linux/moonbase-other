(
    patch_it $SOURCE2 1                 &&

    echo /usr > conf-home               &&
    make                                &&

    prepare_install                     &&

    if [[ ! -d /usr/bin ]]
    then
        mkdir -p /usr/bin
    fi                                  &&
    make setup check

) > $C_FIFO 2>&1
