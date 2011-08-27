(
 
  LANGUAGES="c,c++,objective-c,pascal,fortran,chill,java"
  unset CFLAGS CXXFLAGS CPPFLAGS LDFLAGS 

  patch_it $SOURCE3 1  &&
  
  sedit "s/read junk//" gcc/p/config-lang.in &&
  sedit "s/^MT_CFLAGS/# MT_CFLAGS/" libio/config/mtsafe.mt libstdc++/config/linux.mt &&
  sedit "s/@ref{,the/@ref{Bison,the/" gcc/p/doc/en/internals.texi &&

  ./configure  --host=$BUILD              \
               --prefix=$MODULE_PREFIX    \
               --enable-shared            &&
               
  if [ "`arch`" == "Alpha" ]; then
      sedit 's,-x assembler,-x assembler-with-cpp,' gcc/Makefile
  fi &&
  
  sedit 's:/DOC_DIR=doc/gpc:DOC_DIR=share/doc/gpc:' gcc/Makefile &&
  
  make bootstrap   &&
  prepare_install  && 
  make install     &&

  ln -sf $MODULE_PREFIX/bin/gcc $MODULE_PREFIX/bin/cc

) > $C_FIFO 2>&1
