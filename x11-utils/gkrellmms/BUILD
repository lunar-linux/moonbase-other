(

cat $SCRIPT_DIRECTORY/gkrellmms-path.patch | patch -p1  &&
make                                                    &&
prepare_install                                         &&
make install

) > $C_FIFO 2>&1
