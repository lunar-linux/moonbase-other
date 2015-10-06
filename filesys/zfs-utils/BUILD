OPTS+=" --with-linux=$BUILD_DIRECTORY/linux \
        --with-linux-obj=$BUILD_DIRECTORY/linux \
        --with-spl-obj=$BUILD_DIRECTORY/spl \
        --with-spl=$BUILD_DIRECTORY/spl \
        --with-config=user \
        --disable-static \
        --disable-sysvinit" &&

default_config &&
make &&
prepare_install &&

devoke_installwatch &&

make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
cd $SOURCE_DIRECTORY/__pkg &&

invoke_installwatch &&

tar cf - . | (cd / && tar xvf -)
