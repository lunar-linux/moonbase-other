(

  bzcat $SCRIPT_DIRECTORY/$MODULE-$VERSION.patch.bz2  |  patch -p 1
  ./configure   --build=$BUILD                     \
                --prefix=/usr                      &&
   make  mandir=/usr/share/man                     \
         infodir=/usr/share/info                   \
         sysconfdir=/etc                           \
         localstatedir=/var/cache                  &&
   prepare_install                                 &&
   make  mandir=/usr/share/man                     \
         infodir=/usr/share/info                   \
         sysconfdir=/etc                           \
         localstatedir=/var/cache install          &&
   sedit "s/PRUNEPATHS=\"\/tmp \/usr\/tmp \/var\/tmp \/afs/PRUNEPATHS=\"\/tmp \/usr\/tmp \/var\/tmp \/afs \/proc/" /usr/bin/updatedb
) > $C_FIFO 2>&1
