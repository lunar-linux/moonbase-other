
  CFLAGS="-fPIC" &&

  OPTS+=" --prefix=/usr               \
          --enable-vp8                \
          --enable-pic                \
          --enable-postproc           \
          --enable-shared             \
          --as=yasm                   \
          --enable-vp9                \
          --enable-vp9-highbitdepth   \
          --enable-vp9-postproc       \
          --enable-runtime-cpu-detect \
          --disable-install-docs      \
          --disable-examples          \
          --enable-webm-io            \
          --enable-postproc"          &&

  mkdir build-$MODULE &&
  cd build-$MODULE

  ../configure $OPTS &&

  default_make
