(

    cp  $SCRIPT_DIRECTORY/FILES/jed.rc lib  &&
    JED_ROOT=/var/lib/jed                   \
    ./configure  --build=$BUILD             \
                 --prefix=/usr              &&
    make                                    &&
    make  getmail		            &&
    if    module_installed xfree86
    then  make xjed
    fi                                      &&
    prepare_install                         &&
    make    install

) > $C_FIFO 2>&1
