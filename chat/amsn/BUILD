(

    sedit "s:usr/local:usr:" Makefile  &&
    sedit "s:ln -s:ln -fs:"  Makefile  &&
    prepare_install                    &&
    make install	

) > $C_FIFO 2>&1
