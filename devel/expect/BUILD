(

 cd $SOURCE_DIRECTORY/                                  &&
 ./configure $OPTS                                      \
             --prefix=/usr                              \
             --sysconfdir=/etc                          \
             --localstatedir=/var                       \
             --infodir=/usr/share/info                  \
             --mandir=/usr/share/man                    \
             --with-tcl=/tmp/libtke/tcl/unix            \
             --with-tclinclude=/tmp/libtke/tcl/generic  \
             --enable-gcc                   &&
 make                                       &&
 prepare_install                            &&
 make install

) > $C_FIFO 2>&1

