. /etc/profile.d/qt5.rc &&

OPTS+=" --with-qmake=/usr/lib/qt5/bin/qmake"

# fix build
export CFLAGS=${CFLAGS/-fsanitize=undefined/} &&

default_build
