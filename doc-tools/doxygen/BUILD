(

    ./configure --platform linux-g++         \
                --install /usr/bin/install   &&
    
    make                                     &&
    make docs                                &&
    prepare_install                          &&
    make install                             

) > $C_FIFO 2>&1
