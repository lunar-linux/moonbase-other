mkdir build &&

cd build &&

meson --prefix=/usr \
      --buildtype=release \
       -Denable_docs=false &&

ninja &&

prepare_install &&

ninja install &&

ln -sf /usr/include/pango-1.0 /usr/include/pango &&
rm -fR /usr/lib/installed-tests
