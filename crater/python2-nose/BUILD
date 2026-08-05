_PYDESTDIR=$SOURCE_DIRECTORY/__pythondest2
mkdir -p "$_PYDESTDIR" &&

export PYTHONDONTWRITEBYTECODE=1 &&
python2 setup.py build &

python2 setup.py install --root="$_PYDESTDIR" $OPTS

#conflicts with thast provided by python-nose
#nosetest-2.7 will still get installed
rm -f __pythondest2/usr/bin/nosetests &&

prepare_install &&
cp -rfv --preserve=mode,ownership --remove-destination "$_PYDESTDIR"/* /
