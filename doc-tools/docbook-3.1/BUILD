(
  TARGET=/usr/share/sgml/docbook/$VERSION
 
  cd $SOURCE_DIRECTORY                          &&
  prepare_install                               &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi                                            &&
 
  cp -a * $TARGET                               &&
 
  ln -sf $TARGET/docbook.cat $TARGET/catalog 
  
) > $C_FIFO 2>&1
