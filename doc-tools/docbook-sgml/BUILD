(
  #clean-up broken previous install if it exists
  if [ -d /usr/share/xml ]; then
     rm -Rf /usr/share/xml
  fi                                            &&

  TARGET=/usr/share/sgml/docbook/$MODULE-$VERSION
 
  cd $SOURCE_DIRECTORY                          &&
  prepare_install                               &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi                                            &&
 
  cp -a * $TARGET                               &&

  ln -sf $TARGET/docbook.cat $TARGET/catalog  
  
) > $C_FIFO 2>&1
