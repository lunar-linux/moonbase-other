CFLAGS="-fPIC" &&

OPTS+=" --prefix=/usr               \
        --as=yasm                   \
        --extra-cflags="${CFLAGS}"  \
        --enable-pic                \
        --enable-vp8                \
        --enable-vp9                \
        --enable-shared             \
        --enable-webm-io            \
        --enable-postproc           \
        --enable-vp9-postproc       \
        --enable-runtime-cpu-detect \
        --enable-multi-res-encoding \
        --enable-onthefly-bitpacking \
        --enable-vp9-temporal-denoising \
        --enable-coefficient-range-checking \
        --disable-examples       \
        --disable-docs           \
        --disable-install-docs" &&

# Avoid experimental options
#        --enable-experimental       \
#        --enable-spatial-svc        \

# This option breaks compilation on 32 bits systems
if [ `arch` == "x86_64" ]; then
  OPTS+=" --enable-vp9-highbitdepth"
fi &&

mkdir build-$MODULE &&
cd build-$MODULE

../configure $OPTS &&

default_make
