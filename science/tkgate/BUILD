( 
   ./configure $OPTS &&
   sedit "s,MAXWENDS		128,MAXWENDS		1024," src/tkgate/verilog.c &&
   make &&
   prepare_install &&
   make install &&
   make install.man
) > $C_FIFO 2>&1
