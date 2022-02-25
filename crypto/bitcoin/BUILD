if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" --disable-static --disable-tests" &&

./autogen.sh &&

default_build
