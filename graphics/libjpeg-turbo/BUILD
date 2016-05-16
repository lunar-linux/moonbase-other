autoreconf -fiv &&

OPTS+=" --with-jpeg8 --disable-static" &&

# Not PSAFE when you say yes to Java
if in_depends $MODULE sun-jdk; then
  export MAKES=1
  export JNI_CFLAGS='-I/usr/lib/java/default/include -I/usr/lib/java/default/include/linux'
fi &&

default_build
