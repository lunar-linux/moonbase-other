(

prepare_install                                                        &&
cp $MOONBASE/x11-utils/$MODULE/mailwatch-0.7.2.patch $SOURCE_DIRECTORY && 
cd $SOURCE_DIRECTORY                                                   &&
patch -p1 < mailwatch-0.7.2.patch                                      &&
make                                                                   &&
prepare_install                                                        &&
make install

) > $C_FIFO 2>&1
