(

cat $SCRIPT_DIRECTORY/mailwatch-paths.patch | patch -p1                && 
make                                                                   &&
prepare_install                                                        &&
make install

) > $C_FIFO 2>&1
