(

  sedit 's#for lib in lib lib64 lib32 out; do#for lib in lib lib64 lib32 lib/qt4 out; do#' configure  &&
  sedit 's#prefix=${prefix:=/usr/local}#prefix=${prefix:=/usr}#' configure  &&

  ./configure  &&

  default_make

) > $C_FIFO 2>&1
