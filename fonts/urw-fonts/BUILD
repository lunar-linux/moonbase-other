(

  URWD=/usr/share/fonts/urw-fonts

  prepare_install              &&

  if [ ! -d $URWD ] ; then
     mkdir -p $URWD
  fi                           &&

  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi                           &&

  cp -f $SOURCE_DIRECTORY/* $URWD

) > $C_FIFO 2>&1
