sedit "s:/usr/bin/awk:/bin/awk:" tools/test-susynclib.awk &&
sedit "s:/bin:/games:" src/CMakeLists.txt &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
	-DLOCALE_INSTALL_DIR=/usr/share/locale" &&

default_cmake_build
