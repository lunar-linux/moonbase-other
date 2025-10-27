source /etc/profile.d/qt6.rc  &&

#Dummy dirs to trick cmake
mkdir crystals fragments molecules &&

if module_installed hdf5 ; then
  # Workaround for building with hdf5 1.12
  CXXFLAGS+=' -DH5_USE_110_API'
fi &&

OPTS+=" -DUSE_QT=ON \
        -DQT_VERSION=6 \
        -DBUILD_GPL_PLUGINS=ON"

default_cmake_build

# Cleaning up
rm -rf /usr/src/{crystals,molecules,fragments}
