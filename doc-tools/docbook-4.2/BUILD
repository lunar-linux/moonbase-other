(
  TARGET=/usr/share/sgml/docbook/$VERSION

  prepare_install &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi &&

  rm -rf $SOURCE_DIRECTORY/old.libraries &&

  for DFILE in $SOURCE_DIRECTORY/*; do
	install -m644 $DFILE $TARGET/
  done &&

  ln -sf $TARGET/docbook.cat $TARGET/catalog

) > $C_FIFO 2>&1
