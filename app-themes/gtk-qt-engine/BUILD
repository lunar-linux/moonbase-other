(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  sedit 's: share/: ${INSTALL_PATH_GTK_THEMES}/:' po/CMakeLists.txt kcm_gtk/CMakeLists.txt  &&

  cmake . -DCMAKE_INSTALL_PREFIX:=/usr &&

  default_make

) > $C_FIFO 2>&1
