(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

# Sqlite and inotify are unreliabe, so making them a hard off.
  OPTS+=" -DENABLE_SQLITE=OFF -DENABLE_INOTIFY=OFF" &&

  default_cmake_build

) > $C_FIFO 2>&1
