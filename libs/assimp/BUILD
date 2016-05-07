OPTS+=" -DASSIMP_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE=Release" &&
default_cmake_build &&

if in_depends $MODULE Python; then
  cd $SOURCE_DIRECTORY/port/PyAssimp &&
  python setup.py install
fi
