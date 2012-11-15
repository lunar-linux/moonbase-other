(
  OPTS+=" --enable-release" &&

  cd src           &&

  sedit "29 a #include \"zpath.h\"" tools/depbuild.cpp &&

  sedit "s:\(@LDFLAGS@\):\1 -lm:"   Makefile.in &&
  sedit "s:/bin:/games:"            Makefile.in &&
  patch_it $SOURCE2 2 &&

  default_game_build

) > $C_FIFO 2>&1
