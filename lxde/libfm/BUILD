(

   sedit "s:if :#if :"                   docs/reference/libfm/Makefile.am  &&
   sedit "s:endif:#endif:"               docs/reference/libfm/Makefile.am  &&
   sedit "s:EXTRA_DIST +=:EXTRA_DIST =:" docs/reference/libfm/Makefile.am  &&
   sedit "s:include \$(top_srcdir)/gtk-doc.make:# include \$(top_srcdir)/gtk-doc.make:" docs/reference/libfm/Makefile.am  &&
   sedit "s:GTK_DOC_CHECK:#GTK_DOC_CHECK:" configure.ac  &&

   OPTS+=" --sysconfdir=/etc "  &&

   libtoolize --copy --force  &&
   aclocal  &&
   automake --foreign &&
   autoconf  &&
   default_build

) > $C_FIFO 2>&1
