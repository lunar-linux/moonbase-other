(
   
   cd source                                      &&
   ./configure  --prefix=/usr  			  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=/usr/share/info         \
                --mandir=/usr/share/man           \
                --disable-samples                 \
                $OPTS                             &&
    default_make                   

) > $C_FIFO 2>&1
