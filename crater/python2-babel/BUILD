DESTDIR=$SOURCE_DIRECTORY/__dest

python2 setup.py import_cldr &&
python2 setup.py build &&
python2 setup.py install --root="$DESTDIR" --skip-build &&
mv "$DESTDIR"/usr/bin/pybabel{,2} &&
prepare_install &&
cp -rf --remove-destination $DESTDIR/* /
