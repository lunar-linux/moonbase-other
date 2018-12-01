if in_depends $MODULE sun-jdk; then
  if [[ `arch` == "x86_64" ]] ; then
     JAVA_ARCH=amd64
  else
     JAVA_ARCH=i586
  fi &&
    LDFLAGS+=" -Wl,-rpath,$JAVA_HOME/jre/lib/$JAVA_ARCH,-rpath,$JAVA_HOME/jre/lib/$JAVA_ARCH/server"
fi &&

export LD_LIBRARY_PATH="/usr/lib/swipl-`lvu version swi-prolog`" &&

./configure --with-world --prefix=/usr --enable-readline $OPTS &&

default_make
