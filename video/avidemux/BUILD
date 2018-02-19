OPTS=" --with-core --with-cli --with-plugins --with-system-libass --with-system-liba52 --with-system-libmad --with-system-libmp4v2" &&

echo "***> Build options: "$B_OPT &&

sh bootStrap.bash $OPTS &&

prepare_install &&

make -C buildCli install &&
make -C buildCore install &&
make -C buildPluginsCLI install &&
make -C buildPluginsCommon install &&

install -Dm 644 man/avidemux.1 -t /usr/share/man/man1 &&
install -Dm 644 avidemux_icon.png /usr/share/pixmaps/avidemux.png

if module_installed qt5; then
  make -C buildQt5 install &&
  make -C buildPluginsQt5 install &&
  install -Dm 644 avidemux-qt.desktop -t /usr/share/applications
fi
