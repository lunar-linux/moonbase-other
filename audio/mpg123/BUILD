(

  OPTS+=" --with-module-suffix=.so" &&

  sedit 's/"\.la"/"\.so"/' src/module.c &&
  
  default_build

) > $C_FIFO 2>&1
