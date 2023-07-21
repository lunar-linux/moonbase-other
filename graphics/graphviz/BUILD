sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

export LIBPOSTFIX=/
export CXXFLAGS+=' -fPIC -fpermissive' &&

if in_depends $MODULE %JAVA_SDK; then
  --with-javaincludedir=/usr/lib/java/latest/include/ &&
  --with-javalibdir=/usr/lib/java/latest/lib
fi &&

OPTS+=" --with-libgd --with-fontconfig --disable-man-pdfs"

if module_installed librsvg; then
   OPTS+=" --with-rsvg"
else
   OPTS+=" --without-rsvg"
fi

default_build
