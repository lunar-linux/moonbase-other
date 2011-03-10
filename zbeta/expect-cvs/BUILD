(

 if in_depends $MODULE tk ; then
   OPTS+=" --with-tkinclude=/usr/include/"
 fi

 cd $SOURCE_DIRECTORY/                 &&
 ./configure $OPTS                      \
             --prefix=/usr              \
             --sysconfdir=/etc          \
             --localstatedir=/var       \
             --infodir=/usr/share/info  \
             --mandir=/usr/share/man    \
             --with-tcl=/usr/lib/       \
             --with-tclinclude=/usr/include/  \
             --enable-gcc  &&
 default_make

) > $C_FIFO 2>&1

