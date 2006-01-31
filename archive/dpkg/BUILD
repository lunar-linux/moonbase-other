(
  sedit "s/debiandoc2html/true/" doc/Makefile.in &&
  sedit "s/utils//" Makefile.in &&
  OPTS="$OPTS --without-sgml-doc" &&
  default_build

) > $C_FIFO 2>&1
