(
 
  unset CC CXX MAKEFLAGS

  bunzip2  -cd  $SCRIPT_DIRECTORY/gcc-2.95.3-2.patch.bz2  |
  patch  -p 1
  sedit  "s/read junk//"  gcc/p/config-lang.in
  sedit  "s/@ref{,the/@ref{Bison,the/" gcc/p/doc/en/internals.texi
  LANGUAGES="c,c++,objective-c,pascal,fortran,chill,java"
#               --enable-languages=$LANGAUGES  \


  ./configure  --host=$BUILD              \
               --prefix=/opt/lunar/gcc/2  \
               --enable-shared            &&
  if [ "x`arch`" == "xalpha" ]; then
      sedit 's,-x assembler,-x assembler-with-cpp,' gcc/Makefile &&
      sedit 's,# ,\/\/ ,' gcc/config/alpha/crtbegin.asm &&
      sedit 's,#$,\/\/,' gcc/config/alpha/crtbegin.asm &&
      sedit 's,# ,\/\/ ,' gcc/config/alpha/crtend.asm &&
      sedit 's,#$,\/\/,' gcc/config/alpha/crtend.asm
  fi &&
  sedit 's/DOC_DIR=doc\/gpc/DOC_DIR=share\/doc\/gpc/' $SOURCE_DIRECTORY/gcc/Makefile &&
  make  bootstrap                         &&
  prepare_install                         && 

  make install                            &&

  if [[ -x /opt/lunar/gcc/2/bin/gcc ]]  &&
  !  [[ -L /opt/lunar/gcc/2/bin/cc  ]]; then
     ln -sf /opt/lunar/gcc/2/bin/gcc /opt/lunar/gcc/2/bin/cc
  fi 

) > $C_FIFO 2>&1
