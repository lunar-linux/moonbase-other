(

cd $SOURCE_DIRECTORY &&
rm -f lib* &&
ln -fs /usr/lib/libGLEW.so.1.5 /usr/lib/libGLEW.so.1.3 &&
prepare_install &&
mkdir -p /opt/games/Phun &&
cp -af * /opt/games/Phun

) > $C_FIFO 2>&1
