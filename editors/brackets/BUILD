# brackets needs the /usr/lin/libudev.so.0 file
if [ ! -f /usr/lib/libudev.so.0 ]; then
  cp -s /usr/lib/libudev.so /usr/lib/libudev.so.0
fi &&

npm update &&

cd brackets-shell &&
npm install &&
grunt setup &&

make &&

prepare_install &&

# install program
mkdir -p /opt/brackets     &&
strip out/Release/Brackets &&
install -Dm755 out/Release/Brackets               /opt/brackets/Brackets &&
install -Dm755 installer/linux/debian/brackets    /opt/brackets/brackets &&
install -Dm644 out/Release/cef.pak                /opt/brackets/cef.pak  &&
install -Dm644 out/Release/devtools_resources.pak /opt/brackets/devtools_resources.pak &&

mkdir -p /opt/brackets/lib       &&
mkdir -p /opt/brackets/locales   &&
mkdir -p /opt/brackets/node-core &&
strip out/Release/lib/*.so       &&
cp -R out/Release/lib/*.so    /opt/brackets/lib/       &&
cp -R out/Release/locales/*   /opt/brackets/locales/   &&
cp -R out/Release/node-core/* /opt/brackets/node-core/ &&

ln -sf /opt/brackets/brackets  /usr/bin/brackets  &&
ln -sf /usr/bin/node  /opt/brackets/Brackets-node &&

# install icons
install -Dm644 installer/linux/debian/brackets.desktop /usr/share/applications/brackets.desktop &&
install -Dm644 installer/linux/debian/package-root/usr/share/icons/hicolor/scalable/apps/brackets.svg /usr/share/icons/hicolor/scalable/apps/brackets.svg &&
for size in 32 48 128 256; do
  install -Dm644 "out/Release/appshell${size}.png" "/opt/brackets/appshell${size}.png" &&
  install -Dm644 "out/Release/appshell${size}.png" "/usr/share/icons/hicolor/${size}x${size}/apps/brackets.png"
done

# install samples
mkdir -p /opt/brackets/samples &&
cd $SOURCE_DIRECTORY &&
cp -R samples/* /opt/brackets/samples/ &&

# install www directory
mkdir -p /opt/brackets/www &&
cp -R src/* /opt/brackets/www/
