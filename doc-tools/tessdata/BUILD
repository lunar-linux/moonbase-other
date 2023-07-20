rm -rf /usr/share/tessdata/configs &&
mkdir -p /usr/share/tessdata &&

prepare_install &&

cp -a $SOURCE_DIRECTORY/* /usr/share/tessdata &&
find /usr/share/tessdata -type f -exec chmod 0644 {} \;
