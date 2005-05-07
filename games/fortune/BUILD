(

  make $OFF all     &&
  prepare_install   &&
  make $OFF install &&

  # Remove the .u8 simlinks from the main cookie directory
  # and the offensive directory (if it exists)
  rm -f /usr/share/games/fortunes/*.u8     &&
  rm -f /usr/share/games/fortunes/off/*.u8 &&

  gather_docs Notes cookie-files Offensive

) > $C_FIFO 2>&1
