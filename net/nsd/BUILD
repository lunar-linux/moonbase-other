(

  sedit "s:/usr/local:/usr:" Makefile
  sedit "s:/man/man8:/share/man/man8:" Makefile
  sedit "s:\${PREFIX}/etc/nsd:/etc/nsd:" Makefile
  sedit "s:\${NSDZONESDIR}/nsd.db:/var/nsd/nsd.db:" Makefile
  sedit "s:CFLAGS          = -ansi -pipe -O6 -Wall \${DEBUG}:CFLAGS          = $CFLAGS:" Makefile
        
  make &&
  prepare_install && (
   groupadd  nsd             2>/dev/null
   useradd   nsd  -g  nsd    2>/dev/null
   mkdir  -p                  /var/nsd 
   mkdir  -p                  /etc/nsd/keys
  ) &&
  make install    && (
   chown -R nsd:nsd /etc/nsd /var/nsd
  )
  
) > $C_FIFO 2>&1
