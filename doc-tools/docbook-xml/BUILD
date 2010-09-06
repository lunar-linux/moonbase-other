(

  for DOCBOOK in `ls`; do
      cd $DOCBOOK
      ln -sf docbook.cat catalog
      cd ..
  done &&

  prepare_install &&
  rm -rf old.libraries &&
  mkdir -p /usr/share/sgml/docbook &&
  cp -rf $BUILD_DIRECTORY/xml /usr/share/sgml/docbook &&
  install -m755 $SOURCE_CACHE/$SOURCE2 /usr/bin

) > $C_FIFO 2>&1
