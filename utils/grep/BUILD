#NB. do not fucking move this again! it is installing in /bin
#where it needs to be! -csm
sedit "s/SYMLINK=\"ln -s\"/SYMLINK=\"ln -sf\"/" configure
(
   OPTS=$OPTS" --bindir=/bin --sbindir=/sbin --libdir=/lib --includedir=/include"
   default_build

) > $C_FIFO 2>&1
