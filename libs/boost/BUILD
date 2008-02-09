(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  bjam -q ${MAKES:+-j$MAKES} \
       threading=single,multi \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --prefix=/usr \
       --layout=system \
       --toolset=gcc \
       $OPTS &&

  prepare_install &&

  bjam -q ${MAKES:+-j$MAKES} \
       threading=single,multi \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --toolset=gcc \
       --prefix=/usr \
       --includedir="/usr/include" \
       --libdir="/usr/lib" \
       --layout=system \
       $OPTS \
       install

) > $C_FIFO 2>&1
