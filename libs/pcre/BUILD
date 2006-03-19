(
   bad_flags ALL &&
   ./configure  --build=$BUILD             \
                --bindir=/bin              \
                --sbindir=/sbin            \
                --datadir=/usr/share       \
                --localstatedir=/var       \
                --libdir=/lib              \
                --includedir=/usr/include  \
                --infodir=/usr/share/info  \
                --mandir=/usr/share/man    \
    	        --enable-utf8             &&
   default_make

) > $C_FIFO 2>&1
