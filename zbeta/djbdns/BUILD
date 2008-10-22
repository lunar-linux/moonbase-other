(
    patch_it $SOURCE2 0     &&
    echo /usr > conf-home   &&
    make                    &&

    prepare_install         &&

    if [[ ! -d /usr/bin ]]
    then
        mkdir -p /usr/bin
    fi                      &&
    make setup check

    if [[ X"$AXFR" == "Xy" ]]
    then
        cd /etc/service
        unpack $SOURCE3
    fi

    if [[ X"$DNSCACHEX" == "Xy" ]]
    then
        cd /etc/service
        unpack $SOURCE4
    fi

    if [[ X"$TINYDNS" == "Xy" ]]
    then
        cd /etc/service
        unpack $SOURCE5
    fi

) > $C_FIFO 2>&1
