CFLAGS+=' -fcommon'

OPTS+=" --enable-update-database"

./configure --prefix=/usr &&

export LD_LIBRARY_PATH="$SOURCE_DIRECTORY/.libs"
ldconfig &&

prepare_install &&

default_make
