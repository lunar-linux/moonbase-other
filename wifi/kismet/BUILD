(
    if ! module_installed gpsdrive ; then
	OPTS="$OPTS --disable-gps"
    fi &&

    # Configure seem to have problem getting confused what host to build for
    unset CFLAGS CXXFLAGS LDFLAGS CPPFLAGS &&

    ./configure --prefix=/usr             \
		--build=$BUILD		  \
	        --sysconfdir=/etc/kismet  \
	        --mandir=/usr/share/man   \
                --infodir=/usr/share/info \
                --datadir=/usr/share	  \
                --localstatedir=/var      \
 	        $OPTS                     &&
    make dep				  && 
    make                                  &&
    prepare_install                       &&
    make install

) > $C_FIFO 2>&1
