CFLAGS+=' -ffat-lto-objects'
CXXFLAGS+=' -ffat-lto-objects'

OPTS+=" --prefix=/usr \
        --as=yasm \
        --enable-pic \
        --enable-vp8 \
        --enable-vp9 \
        --enable-shared \
        --enable-webm-io \
        --enable-postproc \
        --enable-vp9-postproc \
        --enable-runtime-cpu-detect \
        --enable-multi-res-encoding \
        --enable-onthefly-bitpacking \
        --enable-vp9-temporal-denoising \
        --disable-unit-tests \
        --disable-examples \
        --disable-docs \
        --disable-static \
        --disable-install-docs" &&

# This option breaks compilation on 32 bits systems
if [ `arch` == "x86_64" ]; then
  OPTS+=" --enable-vp9-highbitdepth --enable-vp9-temporal-denoising"
fi

mkdir build-$MODULE &&
cd build-$MODULE

../configure $OPTS &&
default_make
