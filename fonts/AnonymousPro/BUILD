
  APFONTS=/usr/share/fonts/$MODULE &&

  prepare_install &&

  if [ ! -d $APFONTS ] ; then
     mkdir -p $APFONTS
  fi &&
  
  if [ -d old.libraries ] ; then
    rmdir old.libraries
  fi &&

  gather_docs &&

  cp -f $SOURCE_DIRECTORY/*.ttf $APFONTS &&
  cd $APFONTS &&
  mkfontdir
