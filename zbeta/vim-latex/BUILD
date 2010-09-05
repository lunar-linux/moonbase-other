(

  prepare_install  &&
  make PREFIX=/usr VIMDIR=/usr/share/vim/vimfiles install  &&

  mv doc/latex*.txt .  &&
  gather_docs latex*.txt

) > $C_FIFO 2>&1
