(

  if in_depends $MODULE readline ; then
    export LIBS+=" -lncurses"
  fi &&

  if in_depends $MODULE lua; then
    export LIBS+=" -ldl"
  fi &&

  default_build

) > $C_FIFO 2>&1
