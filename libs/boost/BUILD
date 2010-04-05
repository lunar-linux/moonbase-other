(

  OPTS+=" --without-mpi"
  export EXPAT_INCLUDE=/usr/include/
  export EXPAT_LIBPATH=/usr/lib/

  bjam -q ${MAKES:+-j$MAKES} \
       threading=multi \
       --layout=tagged    \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --prefix=/usr \
       --toolset=gcc \
       --includedir="/usr/include" \
       --libdir="/usr/lib" \
       cxxflags=-fno-strict-aliasing \
       optimization=speed \
       $OPTS &&

  prepare_install &&

  bjam -q ${MAKES:+-j$MAKES} \
       threading=multi \
       --layout=tagged    \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --toolset=gcc \
       --prefix=/usr \
       --includedir="/usr/include" \
       --libdir="/usr/lib" \
       cxxflags=-fno-strict-aliasing \
       optimization=speed \
       $OPTS \
       install

) > $C_FIFO 2>&1
