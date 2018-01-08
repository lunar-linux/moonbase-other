
OPTS+=" -DBUILD_GTEST=1 -DBUILD_SHARED_LIBS=1" &&

default_cmake_build

cat > gmock.pc << EOF  &&
Name: gmock
Description: Google C++ mocking framework
URL: https://github.com/google/googletest
Version: $VERSION

prefix=/usr
includedir=/usr/include
srcdir=@prefix@/src/gmock

Cflags: -I${includedir}/gmock
EOF

install -D -m644 gmock.pc /usr/lib/pkgconfig &&

cat > gtest.pc << EOF
Name: libgtest
Description: Google's framework for writing C++ tests on a variety of platforms
URL: https://github.com/google/googletest
Version: $VERSION

prefix=/usr
includedir=/usr/include/
libdir=${prefix}/lib
Cflags:-I${includedir}/gtest
Libs: -L${libdir} -lgtest -lgtest_main
EOF

install -D -m644 gtest.pc /usr/lib/pkgconfig
