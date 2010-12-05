(

  export CFLAGS="${CFLAGS} -DJS_C_STRINGS_ARE_UTF8"

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&

  sedit 's;include;include/js;' src/rules.mk &&

  cd $SOURCE_DIRECTORY/src &&
  make -f Makefile.ref JS_THREADSAFE=1 &&
  prepare_install &&
  make -f Makefile.ref install

) > $C_FIFO 2>&1
