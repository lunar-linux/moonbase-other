(

  if module_installed sun-jdk ; then
       export JDK_ROOT="$JAVA_HOME" 
  fi &&

  if module_installed sun-jre ; then
       export JDK_ROOT="$JAVA_HOME"
  fi &&

  patch_it $SOURCE2 0 &&

#Revisit on next bump.
  export CFLAGS="$CFLAGS -D__STDC_CONSTANT_MACROS" &&

  default_build

) > $C_FIFO 2>&1
