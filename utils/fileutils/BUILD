(

  ./configure  --build=$BUILD          \
               --mandir=/usr/share/man \
	       --infodir=/usr/share/info \
               --prefix=/usr           &&
  make                                 &&
  prepare_install                      &&
  make    install                      &&

  /usr/bin/mv  /usr/bin/chgrp  /bin  &&
  /usr/bin/mv  /usr/bin/chmod  /bin  &&
  /usr/bin/mv  /usr/bin/chown  /bin  &&
  /usr/bin/mv  /usr/bin/cp     /bin  &&
  /usr/bin/mv  /usr/bin/dd     /bin  &&
  /usr/bin/mv  /usr/bin/df     /bin  &&
  /usr/bin/mv  /usr/bin/ln     /bin  &&
  /usr/bin/mv  /usr/bin/ls     /bin  &&
  /usr/bin/mv  /usr/bin/mkdir  /bin  &&
  /usr/bin/mv  /usr/bin/mknod  /bin  &&
  /usr/bin/mv  /usr/bin/rm     /bin  &&
  /usr/bin/mv  /usr/bin/rmdir  /bin  &&
  /usr/bin/mv  /usr/bin/sync   /bin  &&
  /usr/bin/mv  /usr/bin/mv     /bin

) > $C_FIFO 2>&1
