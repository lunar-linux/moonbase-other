(

  source /etc/profile.d/qt4.rc   &&

  sed -i "22i /usr/share/sgml/docbook/xml/4.2" cmake/modules/FindDocBookXML.cmake &&

  VER=`lvu version docbook-xsl` &&
  sedit "s:docbook/xsl-stylesheets:docbook/xsl-stylesheets-$VER:" cmake/modules/FindDocBookXSL.cmake &&

  default_cmake_build

) > $C_FIFO 2>&1
