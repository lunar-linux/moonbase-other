
# Fix output colors of tiff2pdf when JPEG compression is enabled.
  sedit "s:ColorTransform 0 :ColorTransform 1 :" tools/tiff2pdf.c &&

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 0 &&
  patch_it $SOURCE6 0 &&
  patch_it $SOURCE7 1 &&
  patch_it $SOURCE8 1 &&

  OPTS+=" --with-docdir=/usr/share/doc/$MODULE --disable-static" &&

  default_build
