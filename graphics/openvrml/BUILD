(

  JAVA_HOME="$JAVA_HOME" &&

  export CPPFLAGS="$CPPFLAGS -I/usr/include/boost" &&

#  sedit "s:include <jni.h>:include <include/jni.h>:g" configure &&
  sedit "s:BOOST_LIB_SUFFIX=-mt:BOOST_LIB_SUFFIX=:g" configure &&

  default_build

) > $C_FIFO 2>&1
