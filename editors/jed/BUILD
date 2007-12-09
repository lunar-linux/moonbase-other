(

    cp  $SCRIPT_DIRECTORY/FILES/jed.rc lib  &&
    JED_ROOT=/var/lib/jed                   \
    ./configure  --build=$BUILD             \
                 --prefix=/usr              &&
    make                                    &&
    make  getmail                           &&
    if [ "$USE_X11" == "y" ]; then
      make xjed
    fi                                      &&
    prepare_install                         &&
    make    install                         &&
    cp -p info/jed.* /usr/share/info/

) > $C_FIFO 2>&1
