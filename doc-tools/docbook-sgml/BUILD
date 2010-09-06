(

  for DOCBOOK in `ls`; do
      cd $DOCBOOK
      ln -sf docbook.cat catalog
      cd ..
  done &&

  prepare_install &&
  rm -rf old.libraries &&
  mkdir -p /usr/share/sgml/docbook &&
  cp -rf $BUILD_DIRECTORY/sgml /usr/share/sgml/docbook

) > $C_FIFO 2>&1
