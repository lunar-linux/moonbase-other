(

  sedit "s:/usr/local:/usr:" makeconfig &&
  sedit "s:sfdconf <sf_cleanup:sfdconf sf_cleanup:" develop/install &&

  make config   CONFIG=/etc           \
                INETDCONF=/dev/null   \
                SERVICES=/dev/null   &&
  make all         &&
  prepare_install  &&
  make install
 
) > $C_FIFO 2>&1
