(
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sbindir=/sbin          \
               --libdir=/lib            \
               --mandir=/usr/share/man  \
               --sysconfdir=/etc        \
               --enable-static_link     \
               $OPTS                   &&
  default_make

  cat > /usr/lib/pkgconfig/devmapper.pc <<EOF
prefix=/usr
exec_prefix=
libdir=/lib
includedir=/usr/include

Name: devmapper
Description: device-mapper library
Version: $VERSION
Cflags: -I\${includedir}
Libs: -L\${libdir} -ldevmapper
EOF

) > $C_FIFO 2>&1
