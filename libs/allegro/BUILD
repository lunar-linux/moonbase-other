(

  sedit "s/-O2/$CFLAGS/" configure  &&

  # Fixes compilation error:
  # ./src/i386/icpus.s:70: Error: suffix or operands invalid for `fnstsw'
  # Info at http://www.allegro.cc/forums/thread/597882
  OPTS+=" --disable-asm"  &&

  default_build

) > $C_FIFO 2>&1
