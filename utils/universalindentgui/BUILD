(

  source /etc/profile.d/qt4.rc  &&

  sedit 's:--style=kr:--style=k/r:' indenters/uigui_astyle.ini &&

  qmake -o Makefile UniversalIndentGUI.pro  &&
  make release  &&

  prepare_install  &&
  make install

) > $C_FIFO 2>&1

