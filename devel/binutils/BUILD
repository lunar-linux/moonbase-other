(

  ./configure  --prefix=/usr  \
               $OPTS         &&

  make tooldir=/usr          &&
  prepare_install            &&
  make tooldir=/usr install  &&
  make tooldir=/usr install-info  &&
  mkdir -p $DOCUMENT_DIRECTORY/binutils  &&
  cp -p binutils/NEWS binutils/ChangeLog $DOCUMENT_DIRECTORY/binutils

  # For some reason installwatch fail to pick up the ld hardlink, touching it solves that issue
  [ -e /usr/bin/ld ] && touch /usr/bin/ld

) > $C_FIFO 2>&1
