OPTS+=" --with-linux=$BUILD_DIRECTORY/linux \
        --with-linux-obj=$BUILD_DIRECTORY/linux \
        --with-config=all"

if [ "$(arch)" == "i686" ]; then
  OPTS+=" --enable-atomic-spinlocks"
fi 

default_config &&
make &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
prepare_install &&
cd $SOURCE_DIRECTORY/__pkg &&
tar cf - . | (cd / && tar xvf -)
