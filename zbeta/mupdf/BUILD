(

  opts="prefix=/usr build=release"  &&

  make $opts  &&

  # /usr/bin/pdfinfo is provided by poppler
  sedit "s:PDFINFO_EXE=\$(OBJDIR)/pdfinfo:PDFINFO_EXE=\$(OBJDIR)/pdfinfo-mupdf:" Makefile  &&
  mv build/release/pdfinfo{,-mupdf}  &&

  prepare_install  &&
  make $opts install

) > $C_FIFO 2>&1
