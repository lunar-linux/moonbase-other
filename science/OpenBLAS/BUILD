export ASMFLAGS=$CFLAGS FFLAGS=${CFLAGS/ -Wformat -Werror=format-security/}

# Need this else you get .a
OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DDYNAMIC_ARCH=ON \
        -DNO_AFFINITY=NO \
        -DNO_WARMUP=ON \
        -DTARGET=CORE2"

default_cmake_build
