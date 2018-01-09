# Avoid a conflict with ilbc libs
OPTS+=" --enable-static=no \
        --libdir=/usr/lib/$MODULE \
        --enable-shared=yes" &&

default_build &&

ln -sf /usr/lib/$MODULE/pkgconfig/libilbc.pc /usr/lib/pkgconfig/libilbc.pc
