OPTS+=" --with-linux=/usr/src/linux \
        --with-linux-obj=/usr/src/linux \
        --with-config=all"

if [ "$(arch)" == "i686" ]; then
  OPTS+=" --enable-atomic-spinlocks"
fi 

default_config &&
make &&
prepare_install &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
cp -av $SOURCE_DIRECTORY/__pkg/* /
