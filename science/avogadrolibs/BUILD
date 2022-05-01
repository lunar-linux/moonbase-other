
  . /etc/profile.d/qt5.rc  &&

  if module_installed hdf5 ; then
   # Workaround for building with hdf5 1.12
   CXXFLAGS+=' -DH5_USE_110_API'
  fi &&

  OPTS+=" -DBUILD_GPL_PLUGINS=ON" &&

  default_cmake_build

# Cleaning up
  rm -rf /usr/src/{crystals,molecules}
