(

 ./configure $OPTS                          \
             --with-tcl=/usr/lib            \
             --with-tk=/usr/lib             \
             --with-tclinclude=/usr/include \
             --enable-gcc                   &&
 make                                       &&
 prepare_install                            &&
 make install

) > $C_FIFO 2>&1

