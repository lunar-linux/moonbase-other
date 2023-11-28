source /etc/profile.d/qt6.rc &&

#Qt depends on a UTF-8 locale, and has switched to "en_US.UTF-8" instead.
export LANG='en_US.UTF-8'

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib  \
        -DCMAKE_BUILD_TYPE=Release  \
        -DCMAKE_INSTALL_SYSCONFDIR=/etc/$MODULE" &&

default_cmake_build
