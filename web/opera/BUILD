# Move stuff before install
mv $SOURCE_DIRECTORY/usr/lib/`arch`-linux-gnu/opera-stable $SOURCE_DIRECTORY/usr/lib/ &&
rm -rf "$SOURCE_DIRECTORY/usr/lib/"*-linux-gnu/ &&

prepare_install &&
cp -rfv --remove-destination $SOURCE_DIRECTORY/usr / &&
install -m0755 $SCRIPT_DIRECTORY/opera /usr/bin/opera
