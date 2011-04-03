(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  source /etc/profile.d/qt4.rc  &&

  sedit "s:-qt4::g" UniversalIndentGUI.pro &&

  sedit 's:--style=kr:--style=k/r:' indenters/uigui_astyle.ini &&

  qmake -o Makefile UniversalIndentGUI.pro  &&
  make release  &&

  prepare_install  &&
  make install

) > $C_FIFO 2>&1

