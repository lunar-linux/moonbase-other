(

  patch -p1 $SOURCE_DIRECTORY/libs/pfl/common/file/pgpStdFileIO.c < $SOURCE_CACHE/$SOURCE2 &&

  CONFIGURE="./configure  --build=$BUILD          \
                          --prefix=/usr           \
                          --sysconfdir=/etc       \
                          --localstatedir=/var    \
                          --mandir=/usr/share/man"

  cd libs/pfl && $CONFIGURE &&  make &&

  cd ../pgpcdk && $CONFIGURE && make headers && make &&

  cd ../../clients/pgp/shared && $CONFIGURE && make &&

  cd ../cmdline && $CONFIGURE && make &&

  cd $SOURCE_DIRECTORY/clients/pgp/cmdline &&

  prepare_install &&
  make install

) > $C_FIFO 2>&1
