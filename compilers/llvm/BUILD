(

  sedit 's;install-meta:: $(ObjDir)/META.llvm;install-meta:: META.llvm;' bindings/ocaml/llvm/Makefile &&

  OPTS+=" --enable-optimized --enable-shared --enable-pic --enable-targets=host-only" &&

  default_build

) > $C_FIFO 2>&1
