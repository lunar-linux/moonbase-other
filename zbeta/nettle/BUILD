(

  OPTS+=" --enable-shared" &&

  # hack the statics away (unfortunately no --disable-static)
  sedit "/LIBTARGETS = libnettle.a/d" Makefile.in  &&
  sedit "s?../libnettle.a??g"  tools/Makefile.in testsuite/Makefile.in examples/Makefile.in  &&
  sedit "s?../libhogweed.a??g" tools/Makefile.in testsuite/Makefile.in examples/Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
