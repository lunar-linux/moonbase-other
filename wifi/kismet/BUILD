(
   
    if [ $WITH_ACPI == "y" ]; then
      OPTS="$OPTS --enable-acpi"
    fi
    
    if [ $SUIDINSTALL == "y" ]; then
      MAKE_INSTALL="make suidinstall"
    else
      MAKE_INSTALL="make install"
    fi

    # Quick fix for ImageMagick C++ API change
    sedit 's:leg_di->text_antialias = 1;:leg_di->text_antialias = MagickTrue;:' $SOURCE_DIRECTORY/gpsmap.cc

    if ! module_installed gpsdrive ; then
	OPTS="$OPTS --disable-gps"
    fi &&

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
    $MAKE_INSTALL

) > $C_FIFO 2>&1
