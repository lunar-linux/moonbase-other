(

  sedit  "s:LOCKINGTEST=__defaults__:LOCKINGTEST=/tmp:" Makefile
  sedit  "s:\$(BASENAME)\/man:\$(BASENAME)\/share\/man:g" Makefile
  make  init       &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
