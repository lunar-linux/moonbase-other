(

# Need to remove this. Kernels 2.6 do not have the if_alg.h header. See
# http://patches.openembedded.org/patch/16621/ 
  sedit "s:tools/alg-test::" Makefile.am &&
  sedit 's:AC_CHECK_HEADERS(linux/if_alg.h, dummy=yes,::g;
                s:AC_MSG_ERROR(User-space algorithm header files are required))::g' configure.ac &&

  automake &&
  autoconf &&

  OPTS+=" --enable-ethernet --enable-loopback --enable-client --enable-pie --enable-threads --enable-tools" &&

  default_build

) > $C_FIFO 2>&1
