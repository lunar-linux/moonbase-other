(

  sedit  "s:/usr/local/xanim/mods:/usr/lib/xanim/mods:"  Imakefile  &&
  sedit  "s:XCOMM  XA_MULTIBUF = -DXMBUF:XA_MULTIBUF = -DXMBUF:"  Imakefile &&
  xmkmf  &&
  sedit  's:INCDIR = $(INCROOT):INCDIR = $(INCROOT)/X11:'  Makefile  &&
  sedit  "s:O3:O2:g" Makefile &&
  make xanim           &&
  prepare_install      &&
  mkdir -p /usr/lib/xanim  &&
  cp -fR mods /usr/lib/xanim  &&
  cp docs/xanim.man /usr/share/man/man1/xanim.1  &&
  make DESTDIR=/usr BINDIR=/bin install         

 
) > $C_FIFO 2>&1
