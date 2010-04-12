(

  # make sure the luser has the source for this one!
  download_module wget  &&

# Enable MD2 (for nmap)
  sedit "s/ -DOPENSSL_NO_MD2//" Configure      &&
  sedit 's/"md2"/"rc5"/'        Configure      &&

  ./config  --prefix=/usr                       \
            --openssldir=/etc/ssl               \
            shared                              \
            $OPTS                              &&

  sedit "/^CC/d" Makefile                      &&
  sedit "s/-m486//g" Makefile                  &&
  sedit "s/-O3/-Os/" Makefile                  &&
  sedit "s/^CFLAG=/CFLAG=$CFLAGS /g" Makefile  &&

  make                                         &&
  prepare_install                              &&
  make MANDIR=/usr/share/man install           &&
  cp $SOURCE_CACHE/$SOURCE2 /etc/ssl/certs/Makefile

) > $C_FIFO 2>&1
