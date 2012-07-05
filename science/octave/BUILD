(

  sedit "s:suitesparse:SuiteSparse:g" configure &&

  if in_depends $MODULE SuiteSparse ; then
    export LIBS+=" -lcamd -lmetis"
  fi &&

  CXXFLAGS="-lpthread" &&

  default_build 

) > $C_FIFO 2>&1
