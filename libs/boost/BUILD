(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  OPTS="--without-mpi"
  export EXPAT_INCLUDE=/usr/include/
  export EXPAT_LIBPATH=/usr/lib/

  if in_depends $MODULE icu4c ; then
    HAVE_ICU="1"
  else
    HAVE_ICU="0"
  fi &&

  bjam -q ${MAKES:+-j$MAKES} \
       threading=multi \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --prefix=/usr \
       --layout=tagged \
       --toolset=gcc \
       optimization=speed \
       -sHAVE_ICU=$HAVE_ICU \
       $OPTS &&

  prepare_install &&

  bjam -q ${MAKES:+-j$MAKES} \
       threading=multi \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --toolset=gcc \
       --prefix=/usr \
       --includedir="/usr/include" \
       --libdir="/usr/lib" \
       --layout=tagged \
       -sHAVE_ICU=$HAVE_ICU  \
       optimization=speed \
       $OPTS \
       install

) > $C_FIFO 2>&1
