(
    PREFIX=/usr
    PLUGINS="msnprotocolplugin.so icqprotocolplugin.so yahooprotocolplugin.so ircprotocolplugin.so fileloggingplugin.so debugloggingplugin.so badwordscontentplugin.so"
    
    add_priv_user imspector:imspector &&
    
    # Enable drop privs
    sedit 's/^#user=/user=/' imspector.conf &&
    sedit 's/^#group=/group=/' imspector.conf &&

    make &&
    if is_depends mysql; then
	PLUGINS="$PLUGINS mysqlloggingplugin.so"
	make mysqlloggingplugin.so
    fi &&
    
    if is_depends sqlite; then
	PLUGINS="$PLUGINS sqliteloggingplugin.so"
	make sqliteloggingplugin.so
    fi &&
    
    prepare_install &&
    # We install manually because make install isn't optimal
    install -m 711 imspector ${PREFIX}/sbin/imspector &&
    install -m 755 libimspector.so ${PREFIX}/lib/libimspector.so &&
    for i in $PLUGINS; do
	install -D -m 755 $i ${PREFIX}/lib/imspector/$i
    done &&
    if [ ! -d /etc/imspector ]; then
	mkdir -p /etc/imspector
    fi &&		
    if [ ! -f /etc/imspector/imspector.conf ]; then
	install -m 644 imspector.conf /etc/imspector/imspector.conf
    fi &&
    if [ ! -f /etc/imspector/badwords.txt ]; then
	install -m 644 badwords.txt /etc/imspector/badwords.txt
    fi &&
    if [ ! -d /var/log/imspector ]; then
	mkdir -p /var/log/imspector &&
	chown imspector:imspector /var/log/imspector &&
	chmod 750 /var/log/imspector
    fi

) > $C_FIFO 2>&1
