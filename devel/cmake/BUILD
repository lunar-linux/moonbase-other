if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --qt-qmake=/usr/lib/qt5/bin/qmake"
fi &&

if module_installed jsoncpp; then
  OPTS+=" --system-jsoncpp"
else
  OPTS+=" --no-system-jsoncpp"
fi &&

./configure --prefix=/usr  \
            --docdir=/share/doc/cmake \
            --mandir=/share/man \
            --system-bzip2 \
            --system-zlib \
            --system-liblzma \
            $OPTS &&

default_make
