(
  TARGET=/usr/share/sgml/docbook/$MODULE-$VERSION
 
  prepare_install &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi &&

  for DFILE in $SOURCE_DIRECTORY/*; do
	install -m644 $DFILE $TARGET/
  done &&

  ln -sf $TARGET/docbook.cat $TARGET/catalog  
  
) > $C_FIFO 2>&1
