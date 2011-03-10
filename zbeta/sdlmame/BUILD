(

  make I686=1 &&

  prepare_install &&

  install -m755 mame /usr/games/sdlmame &&

  # Docs
  mv docs/* . &&
  rmdir docs &&
  rm -f windows.txt &&
  gather_docs *.txt

) > $C_FIFO 2>&1
