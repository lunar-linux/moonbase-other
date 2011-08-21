(

  patch_it $SOURCE2 0 &&

# use bootstrap so we can use their supplied bjam/b2.
  ./bootstrap.sh &&
  
  export EXPAT_INCLUDE=/usr/include/ &&
  export EXPAT_LIBPATH=/usr/lib/ &&

  ./b2 -q ${MAKES:+-j$MAKES} \
       threading=single,multi  \
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

  ./b2 -q ${MAKES:+-j$MAKES} \
       threading=single,multi \
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
