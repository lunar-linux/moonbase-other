(
   bad_flags ALL &&
   ./configure  --build=$BUILD               \
                --prefix=/usr                \
                --bindir=/bin                \
                --sbindir=/sbin              \
                --datadir=/usr/share         \
                --localstatedir=/var         \
                --libdir=/lib                \
                --includedir=/usr/include    \
                --infodir=/usr/share/info    \
                --mandir=/usr/share/man      \
                --enable-utf8                \
                --enable-unicode-properties  \
                --disable-static            &&

   sedit 's:$(libdir)/pkgconfig:/usr/lib/pkgconfig:' Makefile  &&

   default_make

) > $C_FIFO 2>&1
