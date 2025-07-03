#cmake . $OPTS &&
OPTS+=" -DCMAKE_POLICY_VERSION_MINIMUM=3.5" &&

default_cmake_build &&

# symlinks needed by conky
ln -sf /usr/bin/toluapp /usr/bin/tolua++ &&
ln -sf /usr/lib/libtoluapp.so /usr/lib/libtolua++.so
