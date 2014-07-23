(

  if installed_version giflib > 5; then
    sedit "s/DGifOpenFileHandle(fd)/DGifOpenFileHandle(fd, NULL)/" src/modules/loaders/loader_gif.c &&
    sedit "s/DGifCloseFile(gif)/DGifCloseFile(gif, NULL)/" src/modules/loaders/loader_gif.c
  fi  &&

  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1

