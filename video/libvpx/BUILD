CFLAGS="-fPIC" &&

OPTS+=" --prefix=/usr               \
        --as=yasm                   \
        --enable-pic                \
        --enable-vp8                \
        --enable-vp9                \
        --enable-shared             \
        --enable-webm-io            \
        --enable-postproc           \
        --enable-vp9-postproc       \
        --enable-runtime-cpu-detect \
        --disable-examples          \
        --disable-install-docs"    &&

# This option breaks compilation on 32 bits systems
if [ `arch` == "x86_64" ]; then
  OPTS+=" --enable-vp9-highbitdepth"
fi &&

mkdir build-$MODULE &&
cd build-$MODULE

../configure $OPTS &&

default_make
