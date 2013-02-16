OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DBINDIR=games
	-DDATADIR=share/games/$MODULE \
	-DAI_LIBS_DIR=share/games/$MODULE \
	-DDOCDIR=share/doc/$MODULE " &&

default_cmake_config &&

make spring &&

prepare_install &&

make install-spring
