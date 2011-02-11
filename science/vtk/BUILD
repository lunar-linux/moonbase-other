(

  sedit "s:2.6:2.7:" CMake/FindPythonLibs.cmake &&
  sedit "s:/usr/local/lib:/usr/lib/R:g" CMake/FindR.cmake &&

  if module_installed sun-jdk ; then
    . /etc/profile.d/sun-jdk.rc
   else
    . /etc/profile.d/sun-jre
  fi &&

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

# For now disable or use proj4, odbc and R from VTK 
  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DBUILD_SHARED_LIBS=ON                 \
                           -DBUILD_EXAMPLES=OFF                   \
                           -DCMAKE_CXX_FLAGS="-D__STDC_CONSTANT_MACROS" \
                           -DVTK_USE_SYSTEM_LIBPROJ4=OFF          \ 
                           -DVTK_USE_GNU_R=OFF                    \
                           -DVTK_USE_ODBC=OFF                     \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
