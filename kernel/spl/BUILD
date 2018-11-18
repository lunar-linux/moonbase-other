OPTS+=" --disable-static \
        --with-config=all \
        --with-linux=$BUILD_DIRECTORY/linux \
        --with-linux-obj=$BUILD_DIRECTORY/linux" &&

if [ "$(arch)" == "i686" ]; then
  OPTS+=" --enable-atomic-spinlocks"
fi &&

default_config &&
make &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
prepare_install &&
cp -rfv --remove-destination $SOURCE_DIRECTORY/__pkg/* /
