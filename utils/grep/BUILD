sedit "s/SYMLINK=\"ln -s\"/SYMLINK=\"ln -sf\"/" configure
(
   OPTS=$OPTS" --bindir=/bin --sbindir=/sbin --libdir=/lib --includedir=/include"
   default_build

) > $C_FIFO 2>&1
