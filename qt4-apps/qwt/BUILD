(

  if in_depends $MODULE qt4; then
      source /etc/profile.d/qt4.rc
      MODULE_PREFIX=${QT4_PREFIX:-/opt/lunar/qt/4}      
      sedit "s:/usr/local:$MODULE_PREFIX:" qwt.prf
      sedit "s:/usr/local:$MODULE_PREFIX:" qwtconfig.pri
   else
      source /etc/profile.d/qt3.rc
      MODULE_PREFIX=${QT_PREFIX:-/opt/lunar/qt/3}
      sedit "s:/usr/local:$MODULE_PREFIX:" qwt.prf
      sedit "s:/usr/local:$MODULE_PREFIX:" qwtconfig.pri
  fi &&

  qmake &&
  default_make

) > $C_FIFO 2>&1
