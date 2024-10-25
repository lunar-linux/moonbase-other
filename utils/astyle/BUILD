OPTS+=" -Wno-dev \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr"

#This gives /usr/bin/astyle
cmake -B $MODULE-$VERSION -S . -DBUILD_SHARED_LIBS=OFF -DBUILD_JAVA_LIBS=OFF $OPTS &&
cmake --build $MODULE-$VERSION &&

#This gives shared libs
cmake -B $MODULE-$VERSION-shared -S . -DBUILD_SHARED_LIBS=ON -DBUILD_JAVA_LIBS=OFF $OPTS &&
cmake --build $MODULE-$VERSION-shared &&

#This gives java shared libs
cmake -B $MODULE-$VERSION-java -S . -DBUILD_SHARED_LIBS=ON -DBUILD_JAVA_LIBS=ON $OPTS &&
cmake --build $MODULE-$VERSION-java &&

prepare_install &&
cmake --install $MODULE-$VERSION &&
cmake --install $MODULE-$VERSION-shared &&
cmake --install $MODULE-$VERSION-java &&

#cd src &&
install -D src/astyle.h /usr/include &&
install -D src/astyle_main.h /usr/include &&
install -D src/ASLocalizer.h /usr/include
