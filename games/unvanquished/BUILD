OPTS+=" -DBUILD_OLD_RENDERER=OFF -DGAME_LIB=OFF -DGAME_QVM=OFF " &&
default_cmake_config       &&
make ${MAKES:+-j${MAKES}}  &&
prepare_install            &&
mkdir -p $MODULE_PREFIX/share/games/unvanquished &&
install -Dm0755 daemon $MODULE_PREFIX/games/unvanquished &&
install -Dm0755 daemonded $MODULE_PREFIX/games/unvanquishded &&
install -Dm0755 librendererGL3.so $MODULE_PREFIX/lib/games/unvanquished/ &&
ln -sf ../../../lib/games/unvanquished/librendererGL3.so $MODULE_PREFIX/share/games/unvanquished/ &&

# Application entry
install -Dm0644 ${SOURCE_DIRECTORY}/src/engine/sys/unvanquished.ico /usr/share/games/unvanquished/unvanquished.ico &&
install -Dm0644 ${SCRIPT_DIRECTORY}/unvanquished.desktop /usr/share/applications/unvanquished.desktop &&

# Wrapper script
install -Dm0755 ${SCRIPT_DIRECTORY}/unvanquished.sh $MODULE_PREFIX/games/unvanquished/unvanquished.sh
