_PYDESTDIR=$SOURCE_DIRECTORY/__pythondest2
mkdir -p "$_PYDESTDIR" &&

export PYTHONDONTWRITEBYTECODE=1 &&
python2 setup.py build &

python2 setup.py install --root="$_PYDESTDIR" $OPTS

#conflicts with that provided by python-chardet
mv __pythondest2/usr/bin/chardetect __pythondest2/usr/bin/chardetect2 &&

prepare_install &&
cp -rfv --preserve=mode,ownership --remove-destination "$_PYDESTDIR"/* /
