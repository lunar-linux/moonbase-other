(

  MING_FONT=/usr/share/fonts/ming-fonts/fbd

  prepare_install              &&

  if [ ! -d $MING_FONT ] ; then
     mkdir -p $MING_FONT
  fi                           &&

  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi                           &&

  cp -rf $SOURCE_DIRECTORY/* $MING_FONT

) > $C_FIFO 2>&1
