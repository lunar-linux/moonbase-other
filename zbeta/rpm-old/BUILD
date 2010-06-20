(
  bad_flags "-z combreloc"
  LDFLAGS=$(echo $LDFLAGS | sed  s/"-z combreloc"// )
  CPPFLAGS="-I/usr/include/nspr -I/usr/include/nss -I/usr/include"
 ./configure --prefix=/usr  \
                --localstatedir=/var  \
                --sysconfdir=/etc  \
                --libdir=/usr/lib  \
                --includedir=/usr/include  \
                --infodir=/usr/share/info  \
                --without-selinux           \
                --mandir=/usr/share/man \
                --with-external-db \
                --without-lua \
               $OPTS &&
 default_make
) > $C_FIFO 2>&1
