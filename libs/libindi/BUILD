OPTS+=" -DUDEVRULES_INSTALL_DIR=/usr/lib/udev/rules.d \
        -DINDI_BUILD_STATIC=OFF" &&

default_cmake_build &&

sedit 's@/usr//usr@/usr@' /usr/lib/pkgconfig/libindi.pc
rm /usr/lib/libindiAlignmentClient.a

add_priv_group plugdev
