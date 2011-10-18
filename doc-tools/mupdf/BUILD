(

  opts="prefix=/usr build=release"  &&

  make $opts  &&

  # /usr/bin/pdfinfo is provided by poppler
  sedit 's/pdfinfo/pdfinfo-mupdf/g' Makefile
  mv build/release/pdfinfo{,-mupdf}  &&

  prepare_install  &&
  make $opts install

) > $C_FIFO 2>&1
