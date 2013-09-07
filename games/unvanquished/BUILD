OPTS+=" -DBUILD_OLD_RENDERER=OFF -DGAME_LIB=OFF -DGAME_QVM=OFF " &&
default_cmake_config       &&
make ${MAKES:+-j${MAKES}}  &&
prepare_install            &&
mkdir -p $MODULE_PREFIX/games $MODULE_PREFIX/lib/games/unvanquished $MODULE_PREFIX/share/games/unvanquished &&
install -m755 daemon $MODULE_PREFIX/games/unvanquished &&
install -m755 daemonded $MODULE_PREFIX/games/unvanquishded &&
install -m755 librendererGL3.so $MODULE_PREFIX/lib/games/unvanquished/ &&
ln -sf ../../../lib/games/unvanquished/librendererGL3.so $MODULE_PREFIX/share/games/unvanquished/
