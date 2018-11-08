if in_depends $MODULE openexr ;then
  export OPENEXR_LIBS+=" -lImath-2_3 -lIexMath-2_3 -lHalf-2_3 -lIex-2_3 -lIlmThread-2_3" &&
  export OPENEXR_CFLAGS+=" `pkgconf --cflags /usr/lib/pkgconfig/IlmBase.pc`"
fi &&

default_build
