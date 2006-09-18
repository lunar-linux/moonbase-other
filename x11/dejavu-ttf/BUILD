(

  DEJ=/usr/share/fonts/dejavu-ttf

  prepare_install  &&

  if [ ! -d $DEJ ] ; then
     mkdir -p $DEJ
  fi  &&
  
  rmdir old.libraries  &&
  
  cp -f $SOURCE_DIRECTORY/* $DEJ

) > $C_FIFO 2>&1
