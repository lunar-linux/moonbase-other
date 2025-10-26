source /etc/profile.d/qt6.rc  &&

#doc install logic is borked
sedit "322,324d" lib/jkqtplotter/CMakeLists.txt &&
sedit "154,156d" lib/jkqtfastplotter/CMakeLists.txt &&
sedit "210,212d" lib/jkqtcommon/CMakeLists.txt &&
sedit "163,167d" lib/jkqtmathtext/CMakeLists.txt &&

OPTS+=" -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"
#        -DJKQtPlotter_BUILD_EXAMPLES=OFF \

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
