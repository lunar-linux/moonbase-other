OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DBINDIR=games \
	-DDATADIR=share/games/$MODULE \
	-DAI_LIBS_DIR=share/games/$MODULE \
	-DDOCDIR=share/doc/$MODULE \
        -DCMAKE_SKIP_RPATH=ON"

if in_depends sun-java; then
   OPTS+=" -DAI_TYPES=JAVA"
else
   OPTS+=" -DAI_TYPES=NATIVE"
fi

default_cmake_config &&

make spring &&

prepare_install &&

make install-spring
