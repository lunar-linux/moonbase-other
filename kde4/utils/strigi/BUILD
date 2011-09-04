(

  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 0 &&

# So nepomukindexer stops segfaulting on ffmpeg libavformat.so. Taken from kde support strigi
# commit bb733a4f.
  sedit 's:indexing FFMPEG\"):indexing FFMPEG\" COMPONENTS AVCODEC AVFORMAT AVUTIL SWSCALE ):' libstreamanalyzer/CMakeLists.txt &&

# Sqlite and inotify are unreliabe, so making them a hard off.
  OPTS+=" -DENABLE_SQLITE=OFF -DENABLE_INOTIFY=OFF" &&

  default_cmake_build

) > $C_FIFO 2>&1
