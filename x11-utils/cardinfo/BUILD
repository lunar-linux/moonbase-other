(
cd $SOURCE_DIRECTORY &&
cc -I/usr/src/linux/include -L/usr/X11/lib -lX11 -lXpm -o cardinfo cardinfo.c &&
cp cardinfo /usr/bin &&
chmod 4755 /usr/bin/cardinfo
) > $C_FIFO 2>&1
