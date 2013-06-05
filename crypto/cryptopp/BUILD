
  sed -i -e 's/^CXXFLAGS/#CXXFLAGS/' GNUmakefile &&
  export CXXFLAGS="${CXXFLAGS} -DNDEBUG -fPIC"   &&

  make libcryptopp.so &&
  default_make &&
  
cat > libcrypto++.pc << EOF  &&
  # Written by Alexander Rødseth <rodseth@gmail.com>

prefix=/usr
libdir=${prefix}/lib
includedir=${prefix}/include

Name: libcrypto++-5.6.2
Description: Class library of cryptographic schemes
Version: 5.6.2
Libs: -L${libdir} -lcryptopp
Cflags: -I${includedir} 
EOF

  install -m644 libcrypto++.pc /usr/lib/pkgconfig/libcrypto++.pc
  
