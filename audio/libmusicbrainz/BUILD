sed -e '/tree\.h/a #include <libxml/parser.h>' -e 's/xmlErrorPtr /const xmlError */' -i src/xmlParser.cc &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release -Wno-dev -DCMAKE_INSTALL_PREFIX=/usr"
 
cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&

cmake --install $MODULE-$VERSION
