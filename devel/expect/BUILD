(

 if [ `arch` == "x86_64" ] ; then
   OPTS="--enable-64bit"
 fi &&

 # for some reason, the build uses exec_prefix everywhere
 # which isn't effected by our setting prefix
 cd $SOURCE_DIRECTORY  &&

 ./configure $OPTS                      \
             --prefix=/usr              \
             --exec-prefix=/usr         \
             --sysconfdir=/etc          \
             --localstatedir=/var       \
             --infodir=/usr/share/info  \
             --mandir=/usr/share/man   &&

 default_make

) > $C_FIFO 2>&1
