if in_depends $MODULE qt6-base; then
  source /etc/profile.d/qt6.rc
  OPTS+=" -DLOG4CXX_QT_SUPPORT=ON"
else
  OPTS+=" -DLOG4CXX_QT_SUPPORT=OFF"
fi &&

OPTS+=" -DPREFER_BOOST=ON"

default_cmake_build
