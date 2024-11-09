export ASMFLAGS=$CFLAGS FFLAGS=${CFLAGS/ -Wformat -Werror=format-security/}

# Need this else you get .a
OPTS+=" -DBUILD_SHARED_LIBS=ON"

default_cmake_build
