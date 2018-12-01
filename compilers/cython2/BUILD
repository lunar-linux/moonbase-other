DESTDIR=$SOURCE_DIRECTORY/__dest

python2 setup.py build &&
python2 setup.py install --root="$DESTDIR" --skip-build &&
for i in cygdb cython cythonize; do
  mv "$DESTDIR"/usr/bin/${i} "$DESTDIR"/usr/bin/${i}2
done &&

prepare_install &&
cp -rf --remove-destination $DESTDIR/* /
