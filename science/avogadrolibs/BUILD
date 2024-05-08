source /etc/profile.d/qt5.rc  &&

#Dummy dirs to trick cmake
mkdir crystals fragments molecules &&

if module_installed hdf5 ; then
  # Workaround for building with hdf5 1.12
  CXXFLAGS+=' -DH5_USE_110_API'
fi &&

OPTS+=" -DBUILD_GPL_PLUGINS=ON -DOpenBabel3_INCLUDE_DIR=/usr/include/openbabel3" &&

default_cmake_build

# Cleaning up
rm -rf /usr/src/{crystals,molecules,fragments}
