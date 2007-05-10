(

  patch_it $SOURCE2 0 &&
  sedit "s/-g -O2/${CFLAGS}/" Makefile &&
  make prefix=/usr strip &&
  prepare_install  &&
  make prefix=/usr install &&
  cp -p contrib/gitview/gitview /usr/bin &&
  gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt contrib/gitview/gitview.txt

) > $C_FIFO 2>&1
