
OPTS+=" --enable-atomic-refcount" &&

# broken for sun-jdk 13.0.2
OPTS+=" --disable-java" &&

if in_depends $MODULE SuiteSparse; then
  export LIBS+=" -lmetis"
fi &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

default_build
