(


  OPTS+=" --disable-debug" &&

  if in_depends $MODULE sun-jdk; then
    export JAVA_INCLUDE="-I/usr/java/latest/include -I/usr/java/latest/include/linux" 
   else
    export JAVA_INCLUDE="-I/usr/java/latest/include -I/usr/java/latest/include/linux" 
  fi &&

  default_config &&
  sedit "s:,: :g" src/swig/config.mak &&

  default_make

) > $C_FIFO 2>&1
