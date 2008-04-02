(

  LIBTTF=/usr/share/fonts/liberation-fonts-ttf

  prepare_install              &&

  if [ ! -d $LIBTTF ] ; then
     mkdir -p $LIBTTF
  fi                           &&

  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi                           &&

  cp -f $SOURCE_DIRECTORY/* $LIBTTF

) > $C_FIFO 2>&1
