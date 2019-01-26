OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release"

if [[ $(arch) == x86_64 ]]; then
  OPTS+=" -DHIGH_BIT_DEPTH=ON"
fi

cmake source/ $OPTS &&

default_make &&

# remove the static lib
rm -f /usr/lib/libx265.a
