(

  message " ${PROBLEM_COLOR}Warning! ${DEFAULT_COLOR}This module compiles and must be installed only on 2.4.x kernels."
  sleep 5

  sedit 's:/usr/local:/usr:g' Makefile &&
  default_make

) > $C_FIFO 2>&1
