if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

./bootstrap --prefix=/usr \
            --system-libs \
            --docdir=/share/doc/cmake \
            $OPTS &&

default_make
