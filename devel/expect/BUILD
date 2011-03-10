(

 if in_depends $MODULE tk ; then
   OPTS+=" --with-tk=$SOURCE_DIRECTORY/libtke/tk/unix"
   cp -f "/usr/lib/tkConfig.sh" libtke/tk/unix
 fi

 if [ -e "/usr/lib/tclConfig.sh" ]; then
   cp "/usr/lib/tclConfig.sh" libtke/tcl/unix
 fi

 # for some reason, the build uses exec_prefix everywhere
 # which isn't effected by our setting prefix
 cd $SOURCE_DIRECTORY  &&

 ./configure $OPTS                      \
             --prefix=/usr              \
             --exec-prefix=/usr         \
             --sysconfdir=/etc          \
             --localstatedir=/var       \
             --infodir=/usr/share/info  \
             --mandir=/usr/share/man    \
             --with-tcl=$SOURCE_DIRECTORY/libtke/tcl/unix            \
             --with-tclinclude=$SOURCE_DIRECTORY/libtke/tcl/generic  \
             --enable-gcc  &&

 default_make

) > $C_FIFO 2>&1
