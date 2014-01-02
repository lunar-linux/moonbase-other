OPTS+=" -DBUILD_OLD_RENDERER=OFF -DBUILD_NEW_RENDERER=ON -DGAME_LIB=ON -DGAME_QVM=ON -DUSE_GEOIP=OFF -DUSE_SDL2=OFF" &&
default_cmake_config       &&

make  &&

prepare_install            &&

mkdir -p $MODULE_PREFIX/share/games/$MODULE &&

install -Dm0755 {,$MODULE_PREFIX/share/games/$MODULE/}daemon     &&
install -Dm0755 {,$MODULE_PREFIX/share/games/$MODULE/}daemon-tty &&
install -Dm0755 {,$MODULE_PREFIX/share/games/$MODULE/}daemonded  &&

install -Dm0755 {,$MODULE_PREFIX/share/games/$MODULE/}rendererGL3.so &&

cp -r main $MODULE_PREFIX/share/games/$MODULE/ &&
chmod -R 0755 $MODULE_PREFIX/share/games/$MODULE/main &&

# Application entry
install -Dm0644 $SOURCE_DIRECTORY/src/engine/sys/unvanquished.ico /usr/share/games/unvanquished/unvanquished.ico &&
install -Dm0644 $SCRIPT_DIRECTORY/unvanquished.desktop /usr/share/applications/unvanquished.desktop &&

# Wrapper script
install -Dm0755 $SCRIPT_DIRECTORY/unvanquished.sh $MODULE_PREFIX/games/unvanquished
