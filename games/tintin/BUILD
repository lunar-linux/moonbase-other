(

    cd $SOURCE_DIRECTORY/src &&
    default_config &&

    # make use of our desired CFLAGS and get rid of a duplicated -Wall
    sedit "s:^CFLAGS = -Wall:CFLAGS = $CFLAGS:" Makefile &&
    make &&
    
    prepare_install &&
    cp tt++ /usr/games

    gather_docs BETAFIXES BUGS TODO

) > $C_FIFO 2>&1
