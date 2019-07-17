OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DENABLE_HDR10_PLUS=TRUE"

if [[ $(arch) == x86_64 ]]; then
  OPTS+=" -DHIGH_BIT_DEPTH=TRUE"
fi

cmake source/ $OPTS &&

default_make &&

# remove the static lib
rm -f /usr/lib/libx265.a
