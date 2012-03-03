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
   sedit 's:ln -s:ln -sf:' Makefile  &&

  if [ -f /lib/libpcre.so.0.0.1 ]; then
#    preserve the old version to prevent the crash of grep
     make          &&
     make install  &&
#    rebuild the new grep image
     lin grep
   fi  &&

#  normal install of pcre
   default_make

) > $C_FIFO 2>&1
