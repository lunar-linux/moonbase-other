(

  sedit "s:/usr/local:/usr:"  Makefile  &&
  sedit "s:/usr/lib/perl5:/usr/lib/perl5/$(lvu installed perl):"  Makefile  &&
  sedit "s:/usr/lib/www/docs:/usr/share/doc/${MODULE}:"  Makefile  &&

  prepare_install  &&
  make all

) > $C_FIFO 2>&1
