CFLAGS+=" -DBOOST_FILESYSTEM_VERSION=3" &&
CXXFLAGS+=" -DBOOST_FILESYSTEM_VERSION=3" &&

# Temporary define to build against boost 1.58
CXXFLAGS+=' -DBOOST_CODECVT_DO_LENGTH_CONST=const' &&

if in_depends $MODULE qt4 ; then
  . /etc/profile.d/qt4.rc
fi &&

default_config &&
./drake &&

prepare_install &&
./drake install
