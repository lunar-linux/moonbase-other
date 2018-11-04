mkdir -p /usr/lib/node_modules &&
chown -R root /usr/lib/node_modules &&

# install it in a temp directory
mkdir -p $SOURCE_DIRECTORY/man/man1 &&
mkdir -p $SOURCE_DIRECTORY/npm_build &&
make DESTDIR=$SOURCE_DIRECTORY/npm_build install &&

# remove some unneeded directories
rm -fr npm_build/usr/etc &&
rm -fr npm_build/usr/share/man &&
rm -fr npm_build/usr/lib/node_modules/npm/man

# copy the man pages directory to it's place
cp -fr $SOURCE_DIRECTORY/man npm_build/usr/share/ &&

prepare_install &&

cp -r --remove-destination npm_build/usr/* /usr/ &&

# Make symlink for node-gyp
ln -sf /usr/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js /usr/bin/node-gyp
