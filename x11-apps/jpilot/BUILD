(

  ./configure  --prefix=/usr                                \
               --bindir=/usr/bin                            \
	       --datadir=/usr/share                         \
	       --sysconfdir=/etc                            \
	       --libdir=/usr/lib                            \
               --enable-gtk2                                \
	       --infodir=/usr/share/info                    \
	       --mandir=/usr/share/man                      &&
  make                                                      &&
  prepare_install                                           &&
  make    install                                           &&
  
  if ! [ -d "/usr/share/icons" ]; then
       mkdir -p /usr/share/icons
  fi                                                        &&
  
  cp $SOURCE_DIRECTORY/icons/*.xpm /usr/share/icons 
  
) > $C_FIFO 2>&1
