(

   mkdir  evolution-db3                                           &&
   ( 
     cd  db-$DBVERSION/build_unix                                 &&
     ../dist/configure  --prefix=$SOURCE_DIRECTORY/evolution-db3  \
                        --disable-dynamic                         &&
     make                                                         &&
     make  install
   )                                                              &&

   if [ -z "$DISPLAY" ] ; then
     OPTS="$OPTS --disable-gtk-doc"
     message "To get evolution devlopment documentation you must build with"
     message "an active X windows connection. i.e. $DISPLAY is set."
   fi								  &&

   ./configure  --prefix=/usr                                     \
                --sysconfdir=/etc                                 \
                --localstatedir=/var                              \
                --with-db3=$SOURCE_DIRECTORY/evolution-db3        \
		--mandir=/usr/share/man		                  \
		--infodir=/usr/share/info	                  \
                $OPTS                                             &&
   default_make

) > $C_FIFO 2>&1
