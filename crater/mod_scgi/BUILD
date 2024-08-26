(
    if module_installed apache || module_installed apache-mod_ssl ; then
        AVER="apache1"
    elif module_installed apache2 ; then
        AVER="apache2"
    fi
    
    cd $AVER
    /usr/sbin/apxs -c mod_scgi.c &&
    prepare_install &&
    # The -c option is quite redundat, but apxs work in a strange way
    /usr/sbin/apxs -i -c mod_scgi.c

) > $C_FIFO 2>&1
