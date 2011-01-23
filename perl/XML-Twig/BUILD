(

  if [ "$INST_TOOLS" == "y" ] ;then
    INST_TOOLS="y"
   else
    INST_TOOLS="n"
  fi &&
 
  perl  Makefile.PL -$INST_TOOLS &&
  default_make

) > $C_FIFO 2>&1
