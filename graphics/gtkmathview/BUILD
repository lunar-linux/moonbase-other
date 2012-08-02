(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  # implicit LIBS missed by the authors
  sedit "s:\(test_rendering_LDADD =\):\1 \$(top_builddir)/src/libmathview.la:" viewer/Makefile.in &&
  sedit "s:\(mathmlsvg_LDADD =\):\1 -lxml2 \$(top_builddir)/src/libmathview.la:" mathmlsvg/Makefile.in &&
  sedit "s:\(mathmlps_LDADD =\):\1 \$(top_builddir)/src/libmathview.la:" mathmlps/Makefile.in &&

  default_build

) > $C_FIFO 2>&1
