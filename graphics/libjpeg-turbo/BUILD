OPTS+=" -DWITH_JPEG8=1 -DENABLE_STATIC=0"

# Not PSAFE when you say yes to Java
if in_depends $MODULE %JAVA_SDK; then
  export MAKES=1
  OPTS+=" -DJAVA_AWT_INCLUDE_PATH=/usr/lib/java/latest/include/ \
          -DJAVA_AWT_LIBRARY=/usr/lib/java/latest/lib/ \
          -DJAVA_INCLUDE_PATH=/usr/lib/java/latest/include \
          -DJAVA_INCLUDE_PATH2=/usr/lib/java/latest/include/linux"
fi &&

default_cmake_build &&

install -vDm 644 ../src/jpegint.h /usr/include
