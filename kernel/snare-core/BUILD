(

sedit "s/ln -s/ln -sf/g" Makefile         &&
make                                      &&
prepare_install                           &&
make install                              &&
cp $SCRIPT_DIRECTORY/audit /etc/init.d/audit

) > $C_FIFO 2>&1
