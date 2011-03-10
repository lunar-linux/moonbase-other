( 

  OPTS+=" --enable-release"
  default_build &&

  # No, docs don't go here...
  rm -Rf $MODULE_PREFIX/share/$MODULE/{FAQ*,INSTALL*,README*,LICENSE,NAMES,TROUBLES}
  # They go here...
  gather_docs PLANS TODO DOC/FAQ* DOC/INSTALL* DOC/README* DOC/LICENSE DOC/NAMES DOC/TROUBLES

) > $C_FIFO 2>&1
