(

  . /etc/profile.d/qt3.rc &&
  sedit 's|.*error.*|PREFIX=/usr\nINSTALL_ROOT=/usr|' myththemes.pro &&
  qmake myththemes.pro    &&

  default_make

) > $C_FIFO 2>&1
