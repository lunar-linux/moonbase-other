./autogen.sh &&

OPTS+=" --disable-static     \
        --with-config=kernel \
        --with-linux=$BUILD_DIRECTORY/linux" &&

if [ "$(arch)" == "i686" ]; then
  OPTS+=" --enable-atomic-spinlocks"
fi &&

default_config &&
make &&
prepare_install &&

devoke_installwatch &&

mkdir __pkg &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
cd $SOURCE_DIRECTORY/__pkg &&
mv lib usr/ &&

invoke_installwatch &&

tar cf - . | (cd / && tar xvf -)
