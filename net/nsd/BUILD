(

  sedit "s:/usr/local:/usr:" Makefile
  sedit "s:/man/man8:/share/man/man8:" Makefile
  sedit "s:\${PREFIX}/etc/nsd:/etc/nsd:" Makefile
  sedit "s:\${NSDZONESDIR}/nsd.db:/var/nsd/nsd.db:" Makefile
  sedit "s:CFLAGS          = -ansi -pipe -O6 -Wall \${DEBUG}:CFLAGS          = $CFLAGS:" Makefile
        
  make &&
  prepare_install && (
   add_priv_user nsd:nsd
   mkdir  -p                  /var/nsd 
   mkdir  -p                  /etc/nsd/keys
  ) &&
  make install    && (
   chown -R nsd:nsd /etc/nsd /var/nsd
  )
  
) > $C_FIFO 2>&1
