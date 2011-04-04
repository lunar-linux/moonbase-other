(

# Add a missing include.
  sed -i "42i #include <cstdio>" src/luceneindexer/cluceneindexreader.cpp &&

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DENABLE_INOTIFY=ON                    \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
