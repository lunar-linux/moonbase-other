export LIBPOSTFIX=/
export CXXFLAGS+=' -fPIC -fpermissive' &&

sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

if in_depends $MODULE qt6-base; then
  source /etc/profile.d/qt6.rc &&
  export QTCORE_LIBS=$(pkgconf --libs /usr/lib/qt6/pkgconfig/Qt6Core.pc)
  export QTCORE_CFLAGS=$(pkgconf --cflags /usr/lib/qt6/pkgconfig/Qt6Core.pc)
  export QTGUI_CFLAGS=$(pkgconf --cflags /usr/lib/qt6/pkgconfig/Qt6Gui.pc)
  export QTGUI_LIBS=$(pkgconf --libs /usr/lib/qt6/pkgconfig/Qt6Gui.pc)
  export QMAKE=/usr/lib/qt6/bin/qmake6
fi &&

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
