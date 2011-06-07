(

  DRO=/usr/share/fonts/droid-ttf  &&

  prepare_install  &&

  if [ ! -d $DRO ] ; then
     mkdir -p $DRO
  fi  &&
  
  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi  &&

  cp -f $SOURCE_DIRECTORY/* $DRO  &&
  cd $DEJ  &&
  mkfontdir

) > $C_FIFO 2>&1
