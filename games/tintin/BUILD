(

    cd $SOURCE_DIRECTORY/src &&
    default_config &&

    # make use of our desired CFLAGS and get rid of a duplicated -Wall
    sedit "s:^CFLAGS = -Wall:CFLAGS = $CFLAGS:" Makefile &&
    make &&
    
    prepare_install &&
    cp tt++ /usr/games

    # Install some docs that will be missed by lunar's auto doc installer
    if [ $GARBAGE == on ] ; then
      mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
      cd .. &&
      cp BETAFIXES BUGS CREDITS TODO $DOCUMENT_DIRECTORY/$MODULE
    fi
    
) > $C_FIFO 2>&1
