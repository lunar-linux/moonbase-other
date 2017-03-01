cat > id3tag.pc << "EOF"
prefix=/usr
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: libid3tag
Description: ID3 tag manipulation library
EOF
echo "Version: $VERSION" >> id3tag.pc
cat >> id3tag.pc << "EOF"
Libs: -L${libdir} -lid3tag
Cflags: -I${includedir}
EOF

default_build
install -v -m644 id3tag.pc /usr/lib/pkgconfig
