OPTS+=" -DASSIMP_BUILD_SAMPLES=OFF  -DASSIMP_WARNINGS_AS_ERRORS=OFF" &&

default_cmake_build &&

sed -i "s|includedir=.*|includedir=/usr/include/assimp|" /usr/lib/pkgconfig/assimp.pc  &&

cd $SOURCE_DIRECTORY/port/PyAssimp &&
python3 setup.py build &&
prepare_install &&
python3 setup.py install --root=/
