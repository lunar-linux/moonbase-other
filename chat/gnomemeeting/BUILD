(

  # hack to make gnomemeeting accept lunar's newer pwlib:
  sedit 's/1\.8\.7/1.9.0/' configure &&
  ./configure  --prefix=/usr                           \
               --datadir=/usr/share/gnomemeeting       \
               --sysconfdir=/etc/gnomemeeting          &&
  default_make 

) > $C_FIFO 2>&1
