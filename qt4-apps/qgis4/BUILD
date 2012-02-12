(

  sedit "s:-w:-w -fpermissive:" cmake/SIPMacros.cmake &&

  default_cmake_build

  sedit "s:Icon=:Icon=/usr/share/qgis/images/icons/:" $SOURCE_DIRECTORY/debian/qgis.desktop &&
  install $SOURCE_DIRECTORY/debian/qgis.desktop /usr/share/applications/ 

) > $C_FIFO 2>&1

