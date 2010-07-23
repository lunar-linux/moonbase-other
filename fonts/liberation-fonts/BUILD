(

  LIBTTF=/usr/share/fonts/liberation-fonts-ttf

  sedit "s:-\$(VER)::" Makefile  &&

  make  &&
  prepare_install  &&

  if [ ! -d $LIBTTF ] ; then
     mkdir -p $LIBTTF
  fi  &&

  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi  &&

  cp -f $MODULE-ttf/* $LIBTTF

) > $C_FIFO 2>&1
