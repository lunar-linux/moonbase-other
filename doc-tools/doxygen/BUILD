( 
    sedit "s/lqt/lqt-mt/" tmake/lib/linux-g++/tmake.conf

    ./configure --platform linux-g++         \
                --install /usr/bin/install   \
		$OPTS &&
    
    make                                     &&
    make docs                                &&
    prepare_install                          &&
    make install                             

) > $C_FIFO 2>&1
