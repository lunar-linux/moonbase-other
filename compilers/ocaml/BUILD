(
 sedit "s/tk_wanted=yes/tk_wanted=no/" configure &&
 sedit "s/head -1/head -n 1/" camlp4/tools/apply.sh &&
 sedit "s/head -1/head -n 1/" camlp4/tools/camlp4_comm.sh &&
 sedit "s/head -1/head -n 1/" camlp4/tools/conv.sh &&
 
 ./configure -prefix /usr -mandir /usr/share/man/man1 &&
 make world      &&
 make opt        &&
 prepare_install &&
 make install

) > $C_FIFO 2>&1
