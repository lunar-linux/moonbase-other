(
    cd subfs-$VERSION        &&
    default_make             &&
    cd ../submountd-$VERSION &&
    ./configure $OPTS        &&
    default_make

) > $C_FIFO 2>&1
