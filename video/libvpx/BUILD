
  CFLAGS="-fPIC" &&

  OPTS+=" --prefix=/usr               \
          --enable-vp8                \
          --enable-pic                \
          --enable-postproc           \
          --enable-shared             \
          --as=yasm                   \
          --enable-vp9                \
          --enable-vp9-postproc       \
          --enable-runtime-cpu-detect \
          --disable-install-docs      \
          --disable-examples          \
          --enable-webm-io            \
          --enable-postproc"         &&

# This option breaks compilation on 32 bits systems
  if [ `arch` == "x86_64" ] ; then
    OPTS+=" --enable-vp9-highbitdepth"
  fi &&

  mkdir build-$MODULE &&
  cd build-$MODULE

  ../configure $OPTS &&

  default_make

