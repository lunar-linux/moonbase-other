(

  patch_it $SOURCE2 0 &&

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc
  . /etc/profile.d/unsermake.rc

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --disable-debug                     \
               --enable-pch                        \
               $OPTS                              &&

  unsermake ${MAKES:+-j$MAKES} --no-color &&

  prepare_install &&

  unsermake install

) > $C_FIFO 2>&1
