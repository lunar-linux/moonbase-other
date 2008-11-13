(

  LIBAV_INCLUDES="-I$SOURCE_DIRECTORY/libs/libavcodec -I$SOURCE_DIRECTORY/libs/libavformat -I$SOURCE_DIRECTORY/libs/libavutil"
  ./configure --prefix=/usr      \
    --extra-cflags="$CFLAGS $LIBAV_INCLUDES"     \
    --extra-cxxflags="$CXXFLAGS $LIBAV_INCLUDES" \
    --extra-ldflags="$LDFLAGS"   \
    $OPTS &&

  . /etc/profile.d/qt3.rc &&
  qmake mythtv.pro        &&

  default_make            &&

  install database/mc.sql /usr/share/mythtv/

) > $C_FIFO 2>&1
