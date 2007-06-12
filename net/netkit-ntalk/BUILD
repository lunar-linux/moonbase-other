(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  sedit "s/MANDIR=\"\$PREFIX\/man/MANDIR=\"\$PREFIX\/share\/man/" configure  &&
  ./configure  --prefix=/usr  &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1  &&  (

  groupadd  tty         2>/dev/null
  useradd   nobody      2>/dev/null
  true

)
