(

# If you choose the qt4 GUI then ./configure craps out with -j
# $MAKES but works fine if you say no to qt4 GUI.
  if in_depends $MODULE qt4 ; then
    sedit "s:ui/mainwindow.h:ui/mainwindow.ui:" src/info/qt_ui.h &&
    . /etc/profile.d/qt4.rc &&
    default_config &&
    ./drake 
   else
    default_config &&
    ./drake -j ${MAKES:-1}
  fi &&

  prepare_install &&
  ./drake install 

) > $C_FIFO 2>&1
