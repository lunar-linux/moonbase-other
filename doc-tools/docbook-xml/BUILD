(

  find $BUILD_DIRECTORY/xml -type d -exec chmod 755 {} \;
  find $BUILD_DIRECTORY/xml -type f -exec chmod 644 {} \;

  for DOCBOOK in `ls`; do
      cd $DOCBOOK
      ln -sf docbook.cat catalog
      cd ..
  done &&

  prepare_install &&
  rm -rf old.libraries &&
  cp -a $BUILD_DIRECTORY/xml /usr/share/sgml/docbook &&
  install -m755 $SOURCE_CACHE/$SOURCE2 /usr/bin

) > $C_FIFO 2>&1
