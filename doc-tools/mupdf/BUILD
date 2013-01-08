(

  sedit "s:openjpeg.h:openjpeg-1.5/openjpeg.h:" fitz/image_jpx.c &&

  opts="prefix=/usr build=release"  &&

  make $opts  &&

  sedit 's/-mupdf//g' Makefile

  prepare_install  &&
  make $opts install

) > $C_FIFO 2>&1
