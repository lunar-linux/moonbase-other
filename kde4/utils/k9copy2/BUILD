(

# These two sedit fixes some pathing changes ffmpeg has done.
  sedit "s:ffmpeg/avcodec.h:libavcodec/avcodec.h:g" CMakeLists.txt  src/import/k9avidecode.cpp &&
  sedit "s:ffmpeg/avformat.h:libavformat/avformat.h:g" src/import/k9avidecode.h                &&

  . /etc/profile.d/qt4.rc
  . /etc/profile.d/kde4.rc

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
