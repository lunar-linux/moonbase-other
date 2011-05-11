(

# Sqlite and inotify are unreliabe, so making them a hard off.
  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        -DENABLE_SQLITE=OFF                    \
        -DENABLE_INOTIFY=OFF                   \
        $OPTS .                               &&

  default_make

) > $C_FIFO 2>&1
