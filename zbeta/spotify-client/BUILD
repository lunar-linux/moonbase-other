
cd $SOURCE_DIRECTORY/opt/spotify/spotify-client &&
./linklibs.sh &&
prepare_install &&
install -d -m 0755 /usr/libexec/spotify-client &&
install -d -m 0755 /usr/share/doc/spotify-client &&
cp -r $SOURCE_DIRECTORY/opt/spotify/spotify-client/* /usr/libexec/spotify-client/ &&
ln -s /usr/libexec/spotify-client/spotify /usr/bin/spotify &&
cp $SOURCE_DIRECTORY/usr/share/doc/spotify-client/copyright /usr/share/doc/spotify-client/
