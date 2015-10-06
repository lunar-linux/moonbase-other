OPTS+=" --sbindir=/usr/bin\
        --libexecdir=/usr/lib/zfs \
        --with-linux=$BUILD_DIRECTORY/linux \
        --with-linux-obj=$BUILD_DIRECTORY/linux \
        --with-spl=$BUILD_DIRECTORY/spl \
        --with-spl-obj=$BUILD_DIRECTORY/spl \
        --with-config=kernel \
        --disable-sysvinit" &&

default_config &&
make &&
prepare_install &&

devoke_installwatch &&

mkdir __pkg &&
make DESTDIR=$SOURCE_DIRECTORY/__pkg install &&
cd $SOURCE_DIRECTORY/__pkg &&
mv lib usr/ &&
mv usr/modules usr/lib/
rm -R usr/src &&

invoke_installwatch &&

tar cf - . | (cd / && tar xvf -)
