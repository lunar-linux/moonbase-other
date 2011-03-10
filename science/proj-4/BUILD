(

  if module_installed $MODULE %JAVA_SDK ; then 
     CFLAGS+=" -I/usr/java/latest/include/linux" &&
     OPTS+=" --with-jni=/usr/java/latest/include/" &&
     default_build &&
     cd jniwrap &&
     ant &&
     cd ../ &&
     prepare_install &&
     install -m0755 jniwrap/libs/jproj.jar /usr/lib/ 
   else
    default_build
  fi 

) > $C_FIFO 2>&1
