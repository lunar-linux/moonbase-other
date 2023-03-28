OPTS+=" -DASSIMP_BUILD_SAMPLES=OFF  -DASSIMP_WARNINGS_AS_ERRORS=OFF" &&

default_cmake_build &&

sed -i "s|includedir=.*|includedir=/usr/include/assimp|" /usr/lib/pkgconfig/assimp.pc  &&

cd $SOURCE_DIRECTORY/port/PyAssimp &&

unset OPTS &&
default_python3_build
