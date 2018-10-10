export TARGET_ARCH=desktop &&
export TARGET_STATUS=release &&
#export UI_TYPE=$USE_QT5_UI &&
export UI_TYPE=qt4 &&

#if [ "USE_QT5_UI" == qt4 ] ; then
  . /etc/profile.d/qt5.rc &&
  export MOC=/usr/lib/qt5/bin/moc &&
sedit 's:-I \$(shell pkg-config --cflags QtCore):-DQT_CORE_LIB -I/usr/include/qt5/QtCore -I/usr/include/qt5:' makefiles/arch/desktop.mk  &&
#  export ULIBS=$(pkg-config --libs /usr/lib/qt5/pkgconfig/Qt5Core.pc) &&
sedit 's:\$(shell pkg-config --libs QtCore QtGui QtNetwork):-L/usr/lib/qt5 -lQt5Core -lQt5Gui -lQt5Network:' makefiles/arch/desktop.mk &&
#fi &&

default_build  &&

ln -sfn /usr/bin/FBReader /usr/bin/fbreader

