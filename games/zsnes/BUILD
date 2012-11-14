(
  OPTS+=" --enable-release" &&

  cd src           &&

  sedit "29 a #include \"zpath.h\"" tools/depbuild.cpp &&
  sedit "s:\(@LDFLAGS@\):\1 -lm:"   Makefile.in &&
  patch_it $SOURCE2 2 &&

  default_build 

) > $C_FIFO 2>&1
