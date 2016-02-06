if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
elif in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc
fi &&

OPTS+=" --libexecdir=/usr/lib" &&

default_build
