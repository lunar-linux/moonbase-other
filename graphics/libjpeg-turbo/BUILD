OPTS+=" -DWITH_JPEG8=1 -DENABLE_STATIC=0"

# Not PSAFE when you say yes to Java
if in_depends $MODULE %JAVA_SDK; then
  export MAKES=1
  export JAVA_AWT_INCLUDE_PATH='-I/usr/lib/java/latest/include -I/usr/lib/java/default/include/linux'
fi &&

default_cmake_build &&

install -vDm 644 ../jpegint.h /usr/include
