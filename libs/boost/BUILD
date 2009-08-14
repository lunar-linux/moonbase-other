(

#  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
patch_it $SOURCE_CACHE/$SOURCE2 1 &&
patch_it $SOURCE_CACHE/$SOURCE3 1 &&
patch_it $SOURCE_CACHE/$SOURCE4 1 &&

#CXXFLAGS+=" -fno-strict-aliasing"
#CPPFLAGS+=" -fno-strict-aliasing"
#cxxflags=-fno-strict-aliasing
#
unset CPP CXX CC CFLAGS CXXFLAGS CPPFLAGS LDFLAGS


#echo $CXXFLAGS &&
#

echo "press ENTER to continu" &&

read TTT &&

  OPTS+=" --without-mpi"
  export EXPAT_INCLUDE=/usr/include/
  export EXPAT_LIBPATH=/usr/lib/

  if in_depends $MODULE icu4c ; then
    HAVE_ICU="1"
  else
    HAVE_ICU="0"
  fi &&

  #bjam -q ${MAKES:+-j$MAKES} \
  bjam -q \
       threading=multi \
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --prefix=/usr \
       --layout=tagged \
       --toolset=gcc \
       optimization=off \
       -sHAVE_ICU=$HAVE_ICU \
       $OPTS &&

  echo "gonna call prepare_install" &&

  prepare_install &&

  echo "prepare_install finished" &&

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
       optimization=off \
       $OPTS \
       install

) > $C_FIFO 2>&1
