CFLAGS+=" -DBOOST_FILESYSTEM_VERSION=3" &&
CXXFLAGS+=" -DBOOST_FILESYSTEM_VERSION=3" &&

# Temporary define to build against boost 1.58
CXXFLAGS+=' -DBOOST_CODECVT_DO_LENGTH_CONST=const' &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  MOC=/usr/lib/qt5/bin/moc &&
  UIC=/usr/lib/qt5/bin/uic &&
  RCC=/usr/lib/qt5/bin/rcc
fi &&

default_config &&
rake $MAKEFLAGS &&

prepare_install &&
rake install
