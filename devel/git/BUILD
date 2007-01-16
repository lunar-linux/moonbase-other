(

  sedit "s/ln -f '\$(DESTDIR_SQ/ln -sf '\$(DESTDIR_SQ/" Makefile &&
  sedit "s/ln git-merge-recursive/ln -s git-merge-recursive/" Makefile &&
  sedit "s/ln git\$X \$@/ln -s git\$X \$@/" Makefile &&
  sedit "s/ln '\$(DESTDIR_SQ/ln -s '\$(DESTDIR_SQ/" Makefile &&
  sedit "s/-g -O2/${CFLAGS}/" Makefile &&
  make prefix=/usr strip &&
  prepare_install  &&
  make prefix=/usr install &&
  gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt

) > $C_FIFO 2>&1
