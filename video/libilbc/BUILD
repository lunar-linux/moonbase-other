# We specifiy the lib path so it does not conflict with the ilbc module
# Since this installs a .pc and the other doesn't this makes more sense
OPTS+=" --enable-static=no        \
        --libdir=/usr/lib/$MODULE \
        --enable-shared=yes"      &&

default_build &&

# Just to make it easier for any dependencies to find it
ln -sf /usr/lib/libilbc/pkgconfig/libilbc.pc /usr/lib/libilbc.pc
