(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  if in_depends $MODULE polkit-qt-1 ; then
    OPTS="-DKAUTH_BACKEND=PolkitQt-1"
  fi &&

  sed -i "22i /usr/share/sgml/docbook/xml/4.2" cmake/modules/FindDocBookXML.cmake &&
  sedit "s:docbook/xsl-stylesheets:docbook/xsl-stylesheets-1.75.2:" cmake/modules/FindDocBookXSL.cmake &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
