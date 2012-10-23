(

 patch_it $SOURCE2 1 &&

 ./configure -prefix /usr -configdir /etc $OPTS &&
 make world      &&
 prepare_install &&
 make install

) > $C_FIFO 2>&1
