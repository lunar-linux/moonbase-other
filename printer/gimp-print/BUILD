(

  sed -i "39i #include <stdio.h>" src/cups/epson.c src/cups/commandtoepson.c &&
  sed -i "14i #include <stdio.h>" src/cups/canon.c src/cups/commandtocanon.c&&

  OPTS+=" --with-testpattern"
  
  default_build

) > $C_FIFO 2>&1
