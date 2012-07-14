(

# fix compiling with glibc 2.16.0
  sed -i '/gets is a security hole/d' lib/gl/stdio.in.h /gl/stdio.in.h  &&

  OPTS+=" --disable-static --without-included-pakchois --without-included-libcfg --without-included-libtasn1"  &&
  LDFLAGS+=" -lpakchois"  &&

  default_build

) > $C_FIFO 2>&1
