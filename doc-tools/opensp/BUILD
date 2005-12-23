(   

   ./configure --build=$BUILD                                 \
               --prefix=/usr                                  \
               --bindir=/usr/bin                              \
               --sbindir=/usr/sbin                            \
               --libexecdir=/usr/libexec                      \
               --datadir=/usr/share                           \
               --sysconfdir=/etc                              \
               --localstatedir=/var                           \
               --libdir=/usr/lib                              \
               --includedir=/usr/include                      \
               --infodir=/usr/share/info                      \
               --mandir=/usr/share/man                        \
	       --disable-doc-build                            \
               --enable-default-catalog=/etc/sgml/catalog     \
               --enable-default-search-path=/usr/share/sgml  &&
               
               
   default_make                            &&
   ln -sf /usr/bin/osx  /usr/bin/sgml2xml  &&
   ln -sf `which onsgmls` /usr/bin/nsgmls    

) > $C_FIFO 2>&1
