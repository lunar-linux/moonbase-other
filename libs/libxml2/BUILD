(

./configure --prefix=/usr --bindir=/usr/bin --sbindir=/usr/sbin --datadir=/usr/share --sysconfdir=/etc --infodir=/usr/share/info --mandir=/usr/share/man --includedir=/usr/include &&

#patch -p1 < $SCRIPT_DIRECTORY/Makefiles.patch            &&
make                                                     &&
prepare_install                                          &&
make install

) > $C_FIFO 2>&1
