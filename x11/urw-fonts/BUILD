(

  URWD=/usr/share/fonts/urw-fonts
      
  prepare_install                           &&

  if [ ! -d $URWD ] ; then
     mkdir -p $URWD                     
  fi                                        &&

  cp -f $SOURCE_DIRECTORY/* $URWD

) > $C_FIFO 2>&1
