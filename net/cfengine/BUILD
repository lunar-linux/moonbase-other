(

    ./configure --prefix=/usr \
	        --with-workdir=/var/lib/cfengine \
	        --with-berkeleydb=/usr \
                $OPTS &&

    # Sigh, documents are installed in a crazy place
    sedit 's:\(DIST_SUBDIRS.*\) contrib inputs doc:\1:;
           s:\(SUBDIRS.*\) contrib inputs:\1:;
           s:\(install-data-am.*\) install-docDATA:\1:' Makefile &&

    default_make &&

    if [ ! -d /var/lib/cfengine/bin ]; then
	mkdir -p /var/lib/cfengine/bin 
    fi &&

    # Install man-pages and docs manually
    mkdir -p /usr/share/doc/cfengine/examples &&
    install -m644 inputs/*.example /usr/share/doc/cfengine/examples/ &&
    install -m644 doc/*.8 /usr/share/man/man8/ &&
    install -m644 doc/*.html /usr/share/doc/cfengine &&

    # cfexecd will search for these binaries in the working dir
    cp -f /usr/sbin/cf{agent,servd,execd} /var/lib/cfengine/bin

) > $C_FIFO 2>&1
