(

  OPTS+=" --disable-static       \
          --enable-experimental  \
          --enable-gio           \
          --disable-valgrind     \
          --disable-debug        \
          --disable-examples"

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "/\tdocs\t\t\t\\\/d" Makefile.in
  fi  &&

  default_config &&

  if [ "`get_module_config DOCS`" = "y" ] ; then
    sedit 's:        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:       -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:' docs/libs/Makefile
    sedit 's:        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:       -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html:' docs/plugins/Makefile
  fi  &&

  default_make

) > $C_FIFO 2>&1
