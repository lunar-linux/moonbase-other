(

  find $BUILD_DIRECTORY/sgml -type d -exec chmod 755 {} \;
  find $BUILD_DIRECTORY/sgml -type f -exec chmod 644 {} \;

  for DOCBOOK in `ls`; do
      cd $DOCBOOK
      ln -sf docbook.cat catalog
      cd ..
  done &&

  prepare_install &&
  rm -rf old.libraries &&
  cp -a $BUILD_DIRECTORY/sgml /usr/share/sgml/docbook

) > $C_FIFO 2>&1
