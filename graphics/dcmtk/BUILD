(

  if in_depends $MODULE tiff ; then
    LINK_TIFF="-ltiff"
  fi &&

  if in_depends $MODULE libpng ; then
    LINK_PNG="-lpng"
  fi &&

# This is mainly to get shared objects. Though some jiggling with
# linking is needed if tiff and libpng are used.
  CFLAGS="-fPIC $CFLAGS $LINK_TIFF $LINK_PNG"     &&
  CXXFLAGS="-fPIC $CXXFLAGS $LINK_TIFF $LINK_PNG" &&
  export AR="gcc"                         &&
  export ARFLAGS="-shared -o"             &&
  export LIBEXT="so"                      &&
  export RANLIB=":"                       &&

  ./configure --prefix=/usr   \
              --build=$BUILD  \
              --host=$BUILD   \
              --includedir=/usr/include/ \
              --libdir=/usr/lib/         \
              --sysconfdir=/etc/$MODULE  \
              --disable-debug            \
              $OPTS                     &&

# This makes the executables
  make all         &&
  prepare_install  &&
  make install-all

) > $C_FIFO 2>&1
