# this is automatically disabled on 32bit machines
OPTS+=" --enable-64 --enable-atomic-refcount" &&

if in_depends $MODULE SuiteSparse ; then
  export LIBS+=" -lmetis"
fi &&

default_build
