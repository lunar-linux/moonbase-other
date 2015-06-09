OPTS+=" --enable-atomic-refcount" &&

if in_depends $MODULE SuiteSparse ; then
  export LIBS+=" -lmetis"
fi &&

default_build
