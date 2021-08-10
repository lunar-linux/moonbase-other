./autogen.sh &&

rm -r lib/{libebml,libmatroska,pugixml} &&

CFLAGS+=" -DBOOST_FILESYSTEM_VERSION=3" &&
CXXFLAGS+=" -DBOOST_FILESYSTEM_VERSION=3" &&

# Temporary define to build against boost 1.58
CXXFLAGS+=' -DBOOST_CODECVT_DO_LENGTH_CONST=const' &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

export LCONVERT=/usr/bin/lconvert-qt5 &&

OPTS+=" --disable-update-check" &&

default_config &&
rake V=1 -j${MAKES} &&

prepare_install &&
rake install
