source /etc/profile.d/qt5.rc &&

export OPT_CFLAGS="${CXXFLAGS}"
export OPT_LIBS="${LDFLAGS}"

export OPENMP_CFLAGS="" 
export OPENMP_LIBS=""

make -j1 -C src CImg.h gmic_stdlib_community.h &&

make -j1 libc &&
make -j1 cli_shared &&
make -j1 gmic_qt_shared &&
make -j1 zart &&

cd gmic-qt &&
/usr/lib/qt5/bin/qmake HOST=krita &&
make -j1 &&
cd ../ &&

prepare_install &&
make install &&
install -m 0755 gmic-qt/gmic_krita_qt /usr/bin/ &&

rm -rf /usr/src/zart
