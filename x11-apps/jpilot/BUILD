(

  cd $SOURCE_DIRECTORY                                      &&
  cp $MOONBASE/x11-apps/$MODULE/*.patch .                   &&
  
  # The order of these two patches is important. 
  # DO NOT CHANGE THEM AROUND!
  
#  patch -p0<columns.patch                                   &&
#  patch -p0<centering.patch                                 &&

  ./configure  --prefix=/usr                                \
               --bindir=/usr/bin                            \
	       --datadir=/usr/share                         \
	       --sysconfdir=/etc                            \
	       --libdir=/usr/lib                            \
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
