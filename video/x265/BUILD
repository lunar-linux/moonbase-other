
OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr  \
        -DCMAKE_BUILD_TYPE=Release   \
        -DENABLE_SHARED=ON           \
        -DENABLE_HDR10_PLUS=ON       \
        -DNATIVE_BUILD=ON            \
        -DENABLE_SVT_HEVC=ON"        &&

if [[ $(arch) == x86_64 ]]; then
  OPTS+=" -DHIGH_BIT_DEPTH=ON"
fi

cmake source/ $OPTS &&

default_make
