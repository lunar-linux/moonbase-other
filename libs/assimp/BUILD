OPTS+=" -DASSIMP_BUILD_SAMPLES=OFF -DASSIMP_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE=Release -DASSIMP_WARNINGS_AS_ERRORS=OFF" &&

default_cmake_build &&

sed -i "s|includedir=.*|includedir=/usr/include/assimp|" /usr/lib/pkgconfig/assimp.pc  &&

cd $SOURCE_DIRECTORY/port/PyAssimp &&
prepare_install &&
python setup.py install
