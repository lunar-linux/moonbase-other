export PYTHONDONTWRITEBYTECODE=1 &&
export CFLAGS+=" -fcommon $(pkgconf --cflags-only-I freetype2)"
export CPPFLAGS+=" $(pkgconf --cflags-only-I freetype2)"

PYTHON=/usr/bin/python3 ./configure --prefix=/usr --enable-python $OPTS &&

pushd src/actioncompiler
bison -y -p swf4 -b swf4compiler swf4compiler.y
bison -y -p swf5 -b swf5compiler swf5compiler.y
popd
ln -s ../ming.i py_ext/ming.i

default_make
