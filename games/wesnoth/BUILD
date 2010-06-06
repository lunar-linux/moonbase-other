(

  ./autogen.sh  &&
  sedit 's:"\${datadir}"/icons:/usr/share/icons:' configure  &&
  sedit 's:"\${datadir}"/applications:/usr/share/applications:' configure  &&
  default_game_build  &&
  gather_docs changelog

) > $C_FIFO 2>&1
