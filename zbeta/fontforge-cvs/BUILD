(
#  sedit "s/-ln -s/# -ln -s/" fontforge/Makefile.dynamic.in &&
#  sedit "s/mv pfaedit-ui-en.c/cp pfaedit-ui-en.c/" fontforge/Makefile.dynamic.in &&
   default_build &&
   mkdir -p $DOCUMENT_DIRECTORY/fontforge-cvs/htdocs/ &&
   cp -p htdocs/* $DOCUMENT_DIRECTORY/fontforge-cvs/htdocs/
   true

) > $C_FIFO 2>&1
