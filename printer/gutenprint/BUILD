(

  sed -i "30i #include <stdio.h>" src/cups/commandtoepson.c src/cups/commandtocanon.c &&
  sed -i "31i #include <stdarg.h>" src/cups/commandtoepson.c src/cups/commandtocanon.c &&

  default_build

) > $C_FIFO 2>&1
