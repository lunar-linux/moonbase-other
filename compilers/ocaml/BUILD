(

 sedit "s/tk_wanted=yes/tk_wanted=no/" configure &&
 ./configure -prefix /usr -mandir /usr/share/man/man1 &&
 make world      &&
 make opt        &&
 make opt.opt    &&
 prepare_install &&
 make install

) > $C_FIFO 2>&1
