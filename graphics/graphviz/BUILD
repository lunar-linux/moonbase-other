if in_depends $MODULE %JAVA_SDK; then
  CFLAGS+=" -I/usr/lib/java/latest/include/ -I/usr/lib/java/latest/include/linux/" &&
  CPPFLAGS+=" -I/usr/lib/java/latest/include/ -I/usr/lib/java/latest/include/linux/"
fi &&

OPTS+=" --with-libgd --with-fontconfig --without-cgraph" &&

if module_installed librsvg; then
   OPTS+=" --with-rsvg"
else
   OPTS+=" --without-rsvg"
fi &&

default_build
