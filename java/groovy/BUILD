DESTDIR=/usr/share/java/groovy &&

prepare_install &&

mkdir -p $DESTDIR/bin &&
cp -R lib embeddable conf $DESTDIR/ &&

for i in $(find $SOURCE_DIRECTORY/bin -type f ! -name "*.bat"); do
  install -m 755 $i $DESTDIR/bin/
done
