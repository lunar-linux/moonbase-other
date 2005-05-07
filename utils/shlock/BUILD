(

 cp Makefile Makefile.orig                   &&
 sedit "/^OPTIM/d"                  Makefile &&
 sedit "s/local\/bin/bin/"          Makefile &&
 sedit "s/local\/man/share\/man/"   Makefile &&
 sedit "s/GMID/MGID/"               Makefile &&
 sedit "/^CFLAGS/d"                 Makefile &&
 sedit "s/-f file/[-c] -f file/"    shlock.c &&
 CFLAGS="-Wall "$CFLAGS                      &&
 prepare_install                             &&
 make install                                &&
 make install.man 
) > $C_FIFO 2>&1
