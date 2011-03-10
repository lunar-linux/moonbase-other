(

  OPTS+=" \
        --enable-experimental  \
        --enable-gio           \
        --disable-valgrind     \
        --disable-debug        \
        --disable-examples"

  default_config &&
  sedit 's:        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:       -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:' docs/libs/Makefile &&
  sedit 's:        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:       -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:' docs/plugins/Makefile &&
  default_make

) > $C_FIFO 2>&1
