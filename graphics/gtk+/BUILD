(

  ./configure --prefix=/usr             \
              --sysconfdir=/etc         \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man   \
			  --with-xinput=xfree       &&
			  
  make                                  &&
  prepare_install                       &&
  make    install                 
#  if  [  !  -e  /usr/include/gtk  ];  then
#    ln  -sf  gtk-1.2/gtk  /usr/include/gtk
#  fi

) > $C_FIFO 2>&1
