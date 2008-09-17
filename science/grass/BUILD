(

   ./configure  --prefix=/usr                    \
                --bindir=/usr/bin                \
                --libexecdir=/usr/libexec/grass  \
                --sbindir=/usr/sbin              \
                --sysconfdir=/etc/grass          \
                --libdir=/usr/lib/grass          \
                --sysconfdir=/etc                \
                --mandir=/usr/share/man          \
                --localstatedir=/var/grass       \
                --enable-shared                  \
                --with-x                         \
                --with-cxx                      &&

   default_make

) > $C_FIFO 2>&1

