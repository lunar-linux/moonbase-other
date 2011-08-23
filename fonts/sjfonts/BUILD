(

  SJFONTS=/usr/share/fonts/$MODULE

  prepare_install              &&

  if [ ! -d $SJFONTS ] ; then
     mkdir -p $SJFONTS
  fi                           &&

  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi                           &&

  cp -f $SOURCE_DIRECTORY/* $SJFONTS

) > $C_FIFO 2>&1
