if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

if module_installed jsoncpp; then
  OPTS+=" --system-jsoncpp"
else
  OPTS+=" --no-system-jsoncpp"
fi &&

./bootstrap --prefix=/usr \
            --system-libs \
            --docdir=/share/doc/cmake \
            $OPTS &&

default_make
