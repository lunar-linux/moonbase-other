OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DNATIVE_BUILD=TRUE \
        -DENABLE_SHARED=TRUE \
        -DENABLE_SVT_HEVC=TRUE \
        -DENABLE_HDR10_PLUS=TRUE"

if [[ $(arch) == x86_64 ]]; then
  OPTS+=" -DHIGH_BIT_DEPTH=ON"
fi

cmake source/ $OPTS &&

default_make
