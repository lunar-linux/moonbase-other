# officially this is no standalone project
# debian started packaging it as .so/.a
# and now projects rely on it being available...

# require STL interface (as used in debian)
sedit "29 i #ifndef TIXML_USE_STL\n #define TIXML_USE_STL\n#endif\n" tinyxml.h &&
CFLAGS+=" -fPIC -DTIXML_USE_STL=1" &&

sedit "s/CFLAGS *:=/CFLAGS := \${CFLAGS} \${RELEASE_CFLAGS}/"     Makefile &&
sedit "s/LDFLAGS *:=/LDFLAGS := \${LDFLAGS} \${RELEASE_LDFLAGS}/" Makefile &&

make &&

OBJ_FILES="tinystr.o tinyxmlerror.o tinyxml.o tinyxmlparser.o" &&

ar rc libtinyxml.a ${OBJ_FILES} &&
g++ -shared -Wl,-soname,libtinyxml.so.${VERSION} -o libtinyxml.so.${VERSION} ${LDFLAGS} ${OBJ_FILES} &&

cat > tinyxml.pc <<EOF &&
prefix=/usr
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: TinyXml
Description: simple, small, C++ XML parser
Version: $VERSION
Libs: -L\${libdir} -ltinyxml
Cflags: -I\${includedir}
EOF

prepare_install &&

install -Dm0644 tinyxml.h tinystr.h /usr/include/ &&

libtool install install -Dm0755 libtinyxml.a libtinyxml.so.${VERSION} /usr/lib/ &&
libtool finish /usr/lib/ &&
install -Dm0644 tinyxml.pc /usr/lib/pkgconfig/
