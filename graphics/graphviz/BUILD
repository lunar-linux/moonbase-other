autoreconf &&

if in_depends $MODULE %JAVA_SDK; then
  --with-javaincludedir=/usr/lib/java/latest/include/ &&
  --with-javalibdir=/usr/lib/java/latest/lib
fi &&

OPTS+=" --with-libgd --with-fontconfig --without-cgraph"

if module_installed librsvg; then
   OPTS+=" --with-rsvg"
else
   OPTS+=" --without-rsvg"
fi

default_build
