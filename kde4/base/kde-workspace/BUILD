(

  sedit 's:/usr/share/hwdata/usb.ids:/usr/share/usb.ids:' kinfocenter/Modules/usbview/usbdb.cpp &&
  sedit '/usb.ids/d' kinfocenter/Modules/usbview/CMakeLists.txt &&
  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build

) > $C_FIFO 2>&1
