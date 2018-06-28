sedit 's:/usr/local:/usr:' GNUmakefile &&
sed -i -e 's/^CXXFLAGS/#CXXFLAGS/' GNUmakefile &&
export CXXFLAGS="${CXXFLAGS} -DNDEBUG -fPIC" &&

make libcryptopp.so &&
default_make &&

cat > libcrypto++.pc << EOF &&
  # Written by Alexander Rødseth <rodseth@gmail.com>
  # Modified by Dennis Veatch <dennisveatch@bellsouth.net>
  # to use the version variable from the module

prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: libcrypto++-$VERSION
Description: Class library of cryptographic schemes
Version: $VERSION
Libs: -L${libdir} -lcryptopp
Cflags: -I${includedir}
EOF

install -m644 libcrypto++.pc /usr/lib/pkgconfig/libcrypto++.pc &&

rm -f /usr/lib/libcryptopp.a
