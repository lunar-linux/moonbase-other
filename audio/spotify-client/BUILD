cd $SOURCE_DIRECTORY/opt/spotify/spotify-client &&
ln -sf /usr/lib/libnspr4.so libnspr4.so.0d &&
ln -sf /usr/lib/libnss3.so libnss3.so.1d &&
ln -sf /usr/lib/libnssutil3.so libnssutil3.so.1d &&
ln -sf /usr/lib/libplc4.so libplc4.so.0d &&
ln -sf /usr/lib/libplds4.so libplds4.so.0d &&
ln -sf /usr/lib/libsmime3.so libsmime3.so.1d &&
ln -sf /usr/lib/libssl3.so libssl3.so.1d &&
ln -sf /usr/lib/libssl.so libssl.so.1.0.0 &&
ln -sf /usr/lib/libcrypto.so libcrypto.so.1.0.0 &&
./linklibs.sh
prepare_install &&
install -d -m 0755 /usr/libexec/spotify-client &&
install -d -m 0755 /usr/share/doc/spotify-client &&
cp -r $SOURCE_DIRECTORY/opt/spotify/spotify-client/* /usr/libexec/spotify-client/ &&
ln -s /usr/libexec/spotify-client/spotify /usr/bin/spotify
