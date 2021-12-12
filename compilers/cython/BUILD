DESTDIR=$SOURCE_DIRECTORY/__dest
mkdir -p "$DESTDIR"/usr/bin

python3 setup.py build &&
python3 setup.py install --root="$DESTDIR" --skip-build &&
for i in cygdb cython cythonize; do
#  mv "$DESTDIR"/usr/bin/${i} "$DESTDIR"/usr/bin/${i}3 &&
  mv bin/${i} "$DESTDIR"/usr/bin/${i}3 &&
  ln -sf ${i}3 "$DESTDIR"/usr/bin/${i}
done &&

prepare_install &&
cp -rf --remove-destination $DESTDIR/* /
