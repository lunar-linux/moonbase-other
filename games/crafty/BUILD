(

  make target=LINUX CFLAGS="$CFLAGS"                    \
       CXFLAGS="$CXXFLAGS" LDFLAGS="$LDFLAGS -lstdc++"  \
       opt=' -DCOMPACT_ATTACKS -DUSE_ATTACK_FUNCTIONS   \
       -DUSE_ASSEMBLY_A -DUSE_ASSEMBLY_B -DFAST'        \
       asm=X86-elf.o crafty-make                       &&
  prepare_install                                      &&
  install -m755 crafty /usr/games                      &&
  install -m755 $SCRIPT_DIRECTORY/craftyx /usr/games   

) > $C_FIFO 2>&1
