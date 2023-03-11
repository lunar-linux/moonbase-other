npm install --omit=optional &&
bin/rapydscript self --complete &&
rm -rf release/ && mv dev/ release/ &&

prepare_install &&
mkdir -p /usr/{bin,lib/node_modules/rapydscript-ng/}
cp -r * /usr/lib/node_modules/rapydscript-ng/ &&

ln -s /usr/lib/node_modules/rapydscript-ng/bin/rapydscript /usr/bin/rapydscript

