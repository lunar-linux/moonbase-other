(

  patch_it $SOURCE2 1 &&

  # Was installing /usr/lib@LIBALT@/libbeecrypt_java.so.7.0.0
  sedit "s:lib@LIBALT@:lib:" java/Makefile.in  &&

  # Fixes compilation error:
  # mpopt.s:62: Error: bad register name `%rdi'
  # http://bugs.sourcemage.org/show_bug.cgi?id=15293#c2
  if [[ $(arch) == i686 ]] ; then
    # Workaround for bad configure script
    export CFLAGS=${CFLAGS/-march=nocona/-march=i686}     &&
    export CFLAGS=${CFLAGS/-march=core2/-march=i686}      &&
    export CFLAGS=${CFLAGS/-march=athlon-fx/-march=i686}  &&
    export CFLAGS=${CFLAGS/-march=k8/-march=i686}         &&
    export CFLAGS=${CFLAGS/-march=opteron/-march=i686}    &&
    export CFLAGS=${CFLAGS/-march=em64t/-march=i686}      &&

    # Temporary workaround for gcc picking up CFLAGS from both of
    # /etc/lunar/local/optimizations.GCC_4_{2,4}, which breaks compilation.
    sedit "s:ASM_ARCH=\$bc_target_arch:ASM_ARCH=i686:" configure
  fi  &&

  # Fixes compilation of rpm - http://rpm5.org/cvs/tktview?tn=51
  # checking for mpfprintln in -lbeecrypt... no
  # checking whether to build with BeeCrypt library... no
  # configure: error: mandatory BeeCrypt library not found
  OPTS+=" --disable-openmp"  &&

  default_build

) > $C_FIFO 2>&1
