OPTS+=" --with-linux=/usr/src/linux \
        --with-linux-obj=/usr/src/linux \
        --with-config=user \
        --with-spl=/usr/src/spl \
        --with-spl-obj=/usr/src/spl \
        --disable-sysvinit"

default_config &&
make &&
prepare_install &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
cd $SOURCE_DIRECTORY/__pkg &&
tar cf - . | (cd / && tar xvf -)
