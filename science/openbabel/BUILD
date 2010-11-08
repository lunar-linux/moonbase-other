(

# This is a temp thing until I can identify which file in /doc is causing this error;
# xargs: unmatched single quote; by default quotes are special to xargs unless you use the -0 option
# The error prevents an install log from being created.
  rm -rf doc/guide/ &&
#

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
