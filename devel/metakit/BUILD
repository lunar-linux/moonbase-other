(
 #protect from ccache
 unset CC CXX                                    &&
 cd builds &&
sedit 's/python2.2/python2.3/' ../unix/configure &&
sedit 's/python2.2/python2.3/' ../unix/configure.in &&
sedit 's/LONG_LONG/PY_LONG_LONG/' ../python/scxx/* &&
sedit 's/LONG_LONG/PY_LONG_LONG/' ../python/* &&
 ../unix/configure  --prefix=/usr                 \
                    --sysconfdir=/etc             \
                    --localstatedir=/var          \
                    --mandir=/usr/share/man       \
                   $OPTS                         &&

 make              &&
 prepare_install   &&
 make install

) > $C_FIFO 2>&1

