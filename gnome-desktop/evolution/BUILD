(

   mkdir  evolution-db3                                         &&
   cd  db-$DBVERSION/build_unix                                 &&
   ../dist/configure  --prefix=$SOURCE_DIRECTORY/evolution-db3  \
                      --disable-dynamic                         &&
   
   make                                                         &&
   make  install                                                &&

   cd  $SOURCE_DIRECTORY                                        &&
   ./configure  --prefix=/opt/lunar/gnome/1                     \
                --sysconfdir=/etc                               \
                --localstatedir=/var                            \
                --with-db3=$SOURCE_DIRECTORY/evolution-db3      \
		--mandir=/opt/lunar/gnome/1/share/man		\
		--infodir=/opt/lunar/gnome/1/share/info		\
                $OPTS                                           &&
    
   default_make

) > $C_FIFO 2>&1
