(

  # patch for gcc 4.4.x
  sedit  "s:getline:GetLine:"  src/formisc.h src/formisc.c  src/fields.c  &&

  sedit  "s:LOCKINGTEST=__defaults__:LOCKINGTEST=/tmp:" Makefile
  sedit  "s:\$(BASENAME)\/man:\$(BASENAME)\/share\/man:g" Makefile
  make  init       &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
