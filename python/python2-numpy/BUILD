unset LDFLAGS

_PYDESTDIR=$SOURCE_DIRECTORY/__pythondest2
mkdir -p "$_PYDESTDIR" &&

export PYTHONDONTWRITEBYTECODE=1 &&
CFLAGS+=" -ffat-lto-objects" python2 setup.py build &&
python2 setup.py install --root="$_PYDESTDIR" $OPTS &&

#This conflicts with that provided by python-numpy
#/usr/bin/f2py2/f2py2.7 are still installed
rm -f __pythondest2/usr/bin/f2py &&

prepare_install &&
cp -rfv --preserve=mode,ownership --remove-destination "$_PYDESTDIR"/* /
