. /etc/profile.d/qt5.rc &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib  \
        -DCMAKE_BUILD_TYPE=Release  \
        -DCMAKE_INSTALL_SYSCONFDIR=/etc/$MODULE" &&

default_cmake_build &&

if in_depends doxygen $MODULE; then
  make doc-man &&
  make install
fi
