( 

    if [ -f src/Makefile ]; then
      message "${MESSAGE_COLOR}Makefile's detected, doing make distclean before compiling${DEFAULT_COLOR}" &&
      ./configure &&
      make distclean
    fi &&

    ./configure --platform linux-g++        \
                --prefix /usr               \
                --install /usr/bin/install  \
		$OPTS                      &&

    make             &&
    make docs        &&
    prepare_install  &&
    make install

) > $C_FIFO 2>&1
