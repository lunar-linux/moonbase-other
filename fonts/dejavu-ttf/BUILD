(

  DEJ=/usr/share/fonts/dejavu-ttf

  prepare_install  &&

  if [ ! -d $DEJ ] ; then
     mkdir -p $DEJ
  fi  &&
  
  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi &&

  cp -f $SOURCE_DIRECTORY/ttf/* $DEJ

) > $C_FIFO 2>&1
