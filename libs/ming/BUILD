./autogen.sh &&

if in_depends $MODULE python2 ; then
  OPTS+=" --disable-static" &&
  PYTHON=/usr/bin/python2 ./configure --prefix=/usr --enable-python $OPTS
else
  OPTS+=" --disable-static" &&
  default_config
fi &&


pushd src/actioncompiler
bison -y -p swf4 -b swf4compiler swf4compiler.y
bison -y -p swf5 -b swf5compiler swf5compiler.y
popd

default_make
