(
patch_it $SOURCE2 0 &&
sed -i -r 's@#if\ defined\(EOWNERDEAD\)@#if\ defined\(EOWNERDEAD\)\ \&\&\ defined\(PTHREAD_MUTEX_ROBUST_NP\)@' \
db/mutex/mut_pthread.c &&

  LDFLAGS=$(echo $LDFLAGS | sed  s/"-z combreloc"// )

 ./configure --prefix=/usr  \
                --localstatedir=/var  \
                --sysconfdir=/etc  \
                --libdir=/usr/lib  \
                --includedir=/usr/include  \
                --infodir=/usr/share/info  \
                --without-selinux           \
                --with-python=no           \
                --mandir=/usr/share/man  &&
 default_make
) > $C_FIFO 2>&1
