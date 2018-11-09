OPTS+=" -DDOCINSTALL=share/doc" &&

if in_depends $MODULE openexr ; then
  VER+=`lvu version openexr|cut -d. -f1-2 | sed 's/\./_/g'` &&
  OPTS+=" -DOPENEXR_HALF_LIBRARY=/usr/lib/libHalf-${VER}.so  \
          -DOPENEXR_IEX_LIBRARY=/usr/lib/libIex-${VER}.so    \
          -DOPENEXR_ILMIMF_LIBRARY=/usr/lib/libIlmImf-${VER}.so \
          -DOPENEXR_ILMTHREAD_LIBRARY=/usr/lib/libIlmThread-${VER}.so \
          -DOPENEXR_IMATH_LIBRARY=/usr/lib/libImath-${VER}.so"
fi &&

default_cmake_build
