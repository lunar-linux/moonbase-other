# brackets needs the /usr/lin/libudev.so.0 file
if [ ! -f /usr/lib/libudev.so.0 ]; then
  cp -s /usr/lib/libudev.so /usr/lib/libudev.so.0
fi &&

npm update &&

cd brackets-shell &&
npm install &&
node_modules/.bin/grunt setup &&

make &&
prepare_install &&

# install program
DESTDIR=/usr/lib/brackets &&
mkdir -p $DESTDIR &&
strip out/Release/Brackets &&
install -Dm755 out/Release/Brackets               $DESTDIR/Brackets &&
install -Dm755 installer/linux/debian/brackets    $DESTDIR/brackets &&
install -Dm644 out/Release/cef.pak                $DESTDIR/cef.pak  &&
install -Dm644 out/Release/devtools_resources.pak $DESTDIR/devtools_resources.pak &&

mkdir -p $DESTDIR/lib       &&
mkdir -p $DESTDIR/locales   &&
mkdir -p $DESTDIR/node-core &&
strip out/Release/lib/*.so  &&
cp -R out/Release/lib/*.so     $DESTDIR/lib/      &&
cp -R out/Release/locales/*    $DESTDIR/locales/  &&
cp -R out/Release/node-core/* $DESTDIR/node-core/ &&

ln -sf $DESTDIR/brackets  /usr/bin/brackets  &&
ln -sf /usr/bin/node  $DESTDIR/Brackets-node &&

# install icons
sedit "s:/opt/brackets/::" installer/linux/debian/brackets.desktop &&
install -Dm644 installer/linux/debian/brackets.desktop /usr/share/applications/brackets.desktop &&
install -Dm644 installer/linux/debian/package-root/usr/share/icons/hicolor/scalable/apps/brackets.svg /usr/share/icons/hicolor/scalable/apps/brackets.svg &&
for size in 32 48 128 256; do
  install -Dm644 "out/Release/appshell${size}.png" "$DESTDIR/appshell${size}.png" &&
  install -Dm644 "out/Release/appshell${size}.png" "/usr/share/icons/hicolor/${size}x${size}/apps/brackets.png"
done

# install samples
mkdir -p $DESTDIR/samples &&
cd $SOURCE_DIRECTORY &&
cp -R samples/* $DESTDIR/samples/ &&

# install www directory
mkdir -p $DESTDIR/www &&
cp -R src/* $DESTDIR/www/
