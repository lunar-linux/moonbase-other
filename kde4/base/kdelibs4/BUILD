(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  source /etc/profile.d/qt4.rc   &&

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  sed -i "22i /usr/share/sgml/docbook/xml/4.2" cmake/modules/FindDocBookXML.cmake &&

  VER=`lvu version docbook-xsl` &&
  sedit "s:docbook/xsl-stylesheets:docbook/xsl-stylesheets-$VER:" cmake/modules/FindDocBookXSL.cmake &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
