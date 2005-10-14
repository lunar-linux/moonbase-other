(
    if module_installed apache || module_installed apache-mod_ssl ; then
	AVER="apache1"
    elif module_installed apache2 ; then
	AVER="apache2"
    fi
    
    cd $AVER
    /usr/sbin/apxs -c mod_scgi.c &&
    prepare_install &&
    /usr/sbin/apxs -i mod_scgi.so

) > $C_FIFO 2>&1
