(


  sedit "s/MANDIR := \$(PREFIX)\$(MANDIR)/MANDIR := \/usr\/share\/\$(MANDIR)/" man/Makefile &&
  sedit "s/XMANDIR := \$(PREFIX)\$(XMANDIR)/XMANDIR := \/usr\/share\/\$(XMANDIR)/" man/Makefile &&
  make  oldconfig  &&
  make  all        &&
  prepare_install  &&
  make    install  &&
  cp -r $SOURCE_DIRECTORY/include/pcmcia /usr/include

) > $C_FIFO 2>&1
