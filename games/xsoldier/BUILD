(
 
 sedit "s/\/usr\/local\/games\/lib\/xsoldier/\/usr\/share\/xsoldier/g" Imakefile
 sedit "s/\/usr\/local\/games/\/usr\/games\//" Imakefile
 xmkmf -a
 prepare_install
 make install

) > $C_FIFO 2>&1
