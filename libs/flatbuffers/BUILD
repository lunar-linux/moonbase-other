sed -i 's/-Werror=/-W/g;s/-Werror//g' CMakeLists.txt &&
sed -i 's#${test_dir}/../flatc#${test_dir}/../../build/flatc#' tests/PythonTest.sh &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release  \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib  \
        -DFLATBUFFERS_BUILD_FLATLIB=OFF  \
        -DFLATBUFFERS_BUILD_SHAREDLIB=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

cd python &&
python setup.py build &&
cd ../ &&

prepare_install &&
cmake --install $MODULE-$VERSION
