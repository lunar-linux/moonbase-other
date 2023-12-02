sedit '11i #include <libxml/parser.h>' src/podofo/main/PdfXMPPacket.cpp &&
sedit '11i #include <libxml/xmlerror.h>' src/podofo/private/XmlUtils.h &&
sedit 's:xmlErrorPtr:const xmlError*:' src/podofo/private/XmlUtils.h &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release  \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DPODOFO_BUILD_TOOLS=True   \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
