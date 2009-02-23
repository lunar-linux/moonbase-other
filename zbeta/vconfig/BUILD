(
        rm vconfig vconfig.o &&
        make vconfig &&
        prepare_install  &&
        install -m 500 vconfig /usr/sbin/ &&
        gather_docs README CHANGELOG

) > $C_FIFO 2>&1
