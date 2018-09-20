
  CFLAGS+=" -fPIC" &&

  sedit "s?\$(LIBSTATIC) \$(LIBDYNAMICV)?\$(LIBDYNAMICV)?g" Rules.make.in src/Makefile.in &&
  sedit "s?\$(LD)?gcc?g" Rules.make.in &&

  default_build
