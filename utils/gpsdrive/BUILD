(
    if ! module_installed mysql ; then
	OPTS="$OPTS --disable-mysql"
    fi &&

    ./configure --prefix=/usr		\
                --mandir=/usr/share/man \
                --datadir=/usr/share    \
                $OPTS			&&
    make				&&
    prepare_install			&&
    make install

) > $C_FIFO 2>&1
