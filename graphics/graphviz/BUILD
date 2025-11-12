export LIBPOSTFIX=/
export CXXFLAGS+=' -fPIC -fpermissive' &&

if in_depends $MODULE qt6-base; then
  source /etc/profile.d/qt6.rc
fi &&

if in_depends $MODULE %JAVA_SDK; then
  source /etc/profile.d/sun-jdk.rc
  export JAVA_INCLUDES="/usr/lib/java/latest/include"
  export JAVA_LIBS="/usr/lib/java/latest/lib"
  export SWIGJAVA_CPPFLAGS="-I/usr/lib/java/latest/include -DSWIGJAVA"
fi &&

OPTS+=" --with-libgd --with-fontconfig --disable-man-pdfs"

if module_installed librsvg; then
   OPTS+=" --with-rsvg"
else
   OPTS+=" --without-rsvg"
fi

export LANG='en_US.UTF-8'
default_config
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
