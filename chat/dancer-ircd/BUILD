(
  add_priv_user ircd:ircd "-s /bin/sh"

  sedit 's/HARD_FDLIMIT_ *4096/HARD_FDLIMIT_ 250/'    include/config.h     &&
  sedit 's/INIT_MAXCLIENTS 4000/INIT_MAXCLIENTS 200/' include/config.h     &&
  sedit 's/^#define *NO_CHANOPS_ON_SPLIT//'           include/config.h     &&

  ./configure      --prefix=/usr             \
                   --mandir=/usr/share/man   \
                   --infodir=/usr/share/info &&
  make  &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
