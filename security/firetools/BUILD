
if in_depends $MODULE qt5 ; then
 OPTS+=" --with-qmake=/usr/lib/qt5/bin/qmake"
fi &&

# fix build
export CFLAGS=${CFLAGS/-fsanitize=undefined/} &&

default_build
