(

  . /etc/profile.d/qt4.rc
  sedit 's:console_show_element(level, text, position):console_show_element(level, text, position, size):' src/info/qt_ui.cpp  &&
  default_build

) > $C_FIFO 2>&1
