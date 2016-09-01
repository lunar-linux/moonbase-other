#mv configure.in configure.ac &&
libtoolize --force &&
aclocal &&
autoheader &&
automake --force-missing --add-missing &&
autoreconf -i &&

OPTS+="--disable-static" &&

default_build
