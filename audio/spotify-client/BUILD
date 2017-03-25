cd $SOURCE_DIRECTORY/usr/share/spotify &&

ln -sf /usr/lib/libssl.so libssl.so.1.0.0 &&
ln -sf /usr/lib/libcrypto.so libcrypto.so.1.0.0 &&
rm -f $SOURCE_DIRECTORY/usr/bin/spotify &&

prepare_install &&

cp -rfv --remove-destination $SOURCE_DIRECTORY/usr / &&
install -m0755 $SCRIPT_DIRECTORY/spotify /usr/bin/spotify
