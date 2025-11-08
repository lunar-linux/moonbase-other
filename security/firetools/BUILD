source /etc/profile.d/qt6.rc &&
export LANG='en_US.UTF-8'

OPTS+=" --with-qmake=/usr/lib/qt6/bin/qmake"

# fix build
export CFLAGS=${CFLAGS/-fsanitize=undefined/} &&

default_build
