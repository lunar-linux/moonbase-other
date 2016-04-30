TARGET=/usr/share/sgml/docbook/xsl-stylesheets-$VERSION &&

prepare_install &&
if ! [ -d "$TARGET" ]; then
  mkdir -p $TARGET
fi &&

rm -rf $SOURCE_DIRECTORY/old.libraries &&

cp -a $SOURCE_DIRECTORY/* $TARGET/
