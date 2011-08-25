(

# Fix some version numbers so it will find ours.
  BOOST_VER="`lvu version boost`" &&
  PYTHON_VER="`lvu version Python|cut -c 1-3`" &&
  sedit "s:2.6:$PYTHON_VER:" CMake/FindPythonLibs.cmake &&
  sedit "s:1.36.1:$BOOST_VER:" CMake/CMake2.4/FindBoost.cmake &&

# This is a similar issue as found in the graphviz BUILD; so lunar fix 
# does not complain over the inability to find some shared ojbects.
  if module_installed sun-jdk; then
     . /etc/profile.d/sun-jdk.rc &&
     OPTS="-DCMAKE_SHARED_LINKER_FLAGS=-Wl,-rpath,/usr/java/jdk1.6.0_23/jre/lib/amd64"
    else
     . /etc/profile.d/sun-jre
  fi &&

# So it doesn't barf on the make if ffmpeg is used.
  if in_depends $MODULE ffmpeg; then
     OPTS="-DCMAKE_CXX_FLAGS=-D__STDC_CONSTANT_MACROS"
  fi &&

  OPTS="-DBUILD_SHARED_LIBS=ON -DBUILD_EXAMPLES=OFF" &&

  default_cmake_build

) > $C_FIFO 2>&1
