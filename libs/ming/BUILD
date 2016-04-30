./autogen.sh &&

OPTS+=" --disable-static" &&

default_config &&

pushd src/actioncompiler
bison -y -p swf4 -b swf4compiler swf4compiler.y
bison -y -p swf5 -b swf5compiler swf5compiler.y
popd

default_make
