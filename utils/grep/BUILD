#NB. do not fucking move this again! it is installing in /bin
#where it needs to be! -csm
sedit "s/SYMLINK=\"ln -s\"/SYMLINK=\"ln -sf\"/" configure
(
   ./configure  --build=$BUILD                          \
                --bindir=/bin                           \
                --sbindir=/sbin                         \
                --datadir=/usr/share                    \
                --localstatedir=/var                    \
                --libdir=/lib                           \
                --includedir=/include                   \
                --infodir=/usr/share/info               \
                --mandir=/usr/share/man                 &&
   default_make

) > $C_FIFO 2>&1
