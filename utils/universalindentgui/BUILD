(

  source /etc/profile.d/qt4.rc  &&

  sedit "s:-qt4::g" UniversalIndentGUI.pro &&

  qmake UniversalIndentGUI.pro  &&

  make release  &&
  prepare_install  &&
  make install

) > $C_FIFO 2>&1

