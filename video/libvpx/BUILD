OPTS+=" --prefix=/usr \
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
        --enable-vp9-highbitdepth \
        --disable-unit-tests \
        --disable-examples \
        --disable-docs \
        --disable-static \
        --disable-install-docs" &&

mkdir build-$MODULE &&
cd build-$MODULE

../configure $OPTS &&
default_make
