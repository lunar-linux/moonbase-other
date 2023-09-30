
cmake -B $MODULE-$VERSION -DCMAKE_INSTALL_PREFIX=/usr \
                          -DSYSCONF_INSTALL_DIR=/etc  \
                          -DCMAKE_BUILD_TYPE=RELEASE &&

sedit 's:${CMAKE_INSTALL_PREFIX}/etc:/etc:g' $SOURCE_DIRECTORY/multitail-$VERSION/cmake_install.cmake &&


prepare_install &&
cmake --build $MODULE-$VERSION &&

cmake --install $MODULE-$VERSION
