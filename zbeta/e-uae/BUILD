(

  if [ "$PLAYER1_FULL_KEYBOARD" == "y" ] ; then
    # Use left side of keyboard instead of right, for player 1
    sedit "s:RCTRL:LCTRL:" src/keybuf.c &&
    sedit "s:RALT:LALT:" src/keybuf.c &&
    sedit "s:RSH:LSH:" src/keybuf.c &&

    # Add missing definition for left CTRL
    sedit "s:#define AK_RCTRL:#define AK_LCTRL 0x63\n#define AK_RCTRL:" src/include/keyboard.h
  fi &&

  OPTS+=" --enable-cdtv --enable-cd32 --enable-scsi-device --enable-aga --with-sdl --with-alsa --with-sdl-gfx --with-sdl-gl" &&
  default_build

) > $C_FIFO 2>&1
