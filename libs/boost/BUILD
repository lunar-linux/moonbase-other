(

#  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
patch_it $SOURCE_CACHE/$SOURCE2 1 &&
patch_it $SOURCE_CACHE/$SOURCE3 1 &&
patch_it $SOURCE_CACHE/$SOURCE4 1 &&

<<<<<<< HEAD
#CXXFLAGS+=" -fno-strict-aliasing"
#CPPFLAGS+=" -fno-strict-aliasing"
#cxxflags=-fno-strict-aliasing
#
unset CPP CXX CC CFLAGS CXXFLAGS CPPFLAGS LDFLAGS


#echo $CXXFLAGS &&
#

echo "press ENTER to continu" &&

read TTT &&

=======
>>>>>>> master
  OPTS+=" --without-mpi"
  export EXPAT_INCLUDE=/usr/include/
  export EXPAT_LIBPATH=/usr/lib/

  if in_depends $MODULE icu4c ; then
    HAVE_ICU="1"
  else
    HAVE_ICU="0"
  fi &&

<<<<<<< HEAD
  #bjam -q ${MAKES:+-j$MAKES} \
  bjam -q \
       threading=multi \
=======
  bjam -q ${MAKES:+-j$MAKES} \
       threading=single,multi \
       --layout=tagged    \
>>>>>>> master
       runtime-link=shared \
       link=shared \
       release \
       debug-symbols=off \
       --prefix=/usr \
       --toolset=gcc \
       optimization=off \
       -sHAVE_ICU=$HAVE_ICU \
       --includedir="/usr/include" \
       --libdir="/usr/lib" \
       $OPTS &&

  echo "gonna call prepare_install" &&

  prepare_install &&

  echo "prepare_install finished" &&

  bjam -q ${MAKES:+-j$MAKES} \
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
       -sHAVE_ICU=$HAVE_ICU  \
       optimization=off \
       $OPTS \
       install

) > $C_FIFO 2>&1
