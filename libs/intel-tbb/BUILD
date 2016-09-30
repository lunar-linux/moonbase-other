export CXXFLAGS+=" -fno-lifetime-dse"

make &&

prepare_install &&

rm include/tbb/*.html &&
cp -a include/tbb /usr/include &&
install -m644 build/linux_*/*.so* /usr/lib
