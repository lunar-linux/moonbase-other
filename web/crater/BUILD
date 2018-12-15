# Move stuff before install
mv $SOURCE_DIRECTORY/usr/lib/*-linux-gnu/opera $SOURCE_DIRECTORY/usr/lib/ &&
rm -rf "$SOURCE_DIRECTORY/usr/lib/"*-linux-gnu/ &&
prepare_install &&
cp -rfv --remove-destination $SOURCE_DIRECTORY/usr / &&
chmod 4755 /usr/lib/opera/opera_sandbox &&
install -m0755 $SCRIPT_DIRECTORY/opera /usr/bin/opera
