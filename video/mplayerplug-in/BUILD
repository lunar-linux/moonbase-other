(    
    ./configure --with-gecko-sdk=$SOURCE_DIRECTORY/gecko-sdk  \
		--enable-wmp   \
		--enable-qt    \
		--enable-rm    \
		--enable-gmp  &&
    make             &&
    prepare_install  &&
    mkdir -p /opt/lunar/plugins
    install -m755 mplayerplug-in.so mplayerplug-in.xpt          \
		  mplayerplug-in-gmp.so mplayerplug-in-gmp.xpt  \
		  mplayerplug-in-qt.so mplayerplug-in-qt.xpt    \
		  mplayerplug-in-rm.so mplayerplug-in-rm.xpt    \
		  mplayerplug-in-wmp.so mplayerplug-in-wmp.xpt  \
		  /opt/lunar/plugins 

) > $C_FIFO 2>&1
