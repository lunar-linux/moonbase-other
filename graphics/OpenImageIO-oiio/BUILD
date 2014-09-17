
  if in_depends $MODULE openjpeg ; then
    OPENJPEG_VER=`lvu version openjpeg | cut -c 1-3` &&
    OPTS+=" -DOPENJPEG_INCLUDE_DIR=/usr/include/openjpeg-$OPENJPEG_VER"
  fi &&

  if module_installed hdf5 ; then
    OPTS+=" -DHDF5_LIBRARIES=/usr/lib"
  fi &&

  OPTS+=" -DEMBEDPLUGINS=OFF -DCMAKE_C_FLAGS=-fPIC -Wno-dev" &&

  # these will both be obsolete with the next version bump
  sedit "35i #include <string.h>" src/libtexture/texturesys.cpp src/libtexture/imagecache.cpp src/testtex/testtex.cpp &&
  sedit "163 s/= true/= TRUE/" src/jpeg.imageio/jpegoutput.cpp &&

  cmake $SOURCE_DIRECTORY/src -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
                              -DCMAKE_BUILD_TYPE=RELEASE            \
                              $OPTS &&

  default_make
