(

  patch_it $SOURCE2 0 &&
  make prefix=/usr strip &&
  prepare_install  &&
  make prefix=/usr install &&
  gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt

) > $C_FIFO 2>&1
