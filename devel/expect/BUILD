(

 if in_depends $MODULE tk ; then
   OPTS="$OPTS --with-tk=$SOURCE_DIRECTORY/libtke/tk/unix"
 fi

 cd $SOURCE_DIRECTORY/                                  &&
 ./configure $OPTS                                      \
             --prefix=/usr                              \
             --sysconfdir=/etc                          \
             --localstatedir=/var                       \
             --infodir=/usr/share/info                  \
             --mandir=/usr/share/man                    \
             --with-tcl=$SOURCE_DIRECTORY/libtke/tcl/unix            \
             --with-tclinclude=$SOURCE_DIRECTORY/libtke/tcl/generic  \
             --enable-gcc                   &&
 make                                       &&
 prepare_install                            &&
 make install

) > $C_FIFO 2>&1

