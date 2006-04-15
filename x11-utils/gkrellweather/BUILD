(

  if [ ! -e /usr/lib/gkrellm2/plugins ]; then
     mkdir -p /usr/lib/gkrellm2/plugins
  fi &&

  sedit "s/\/usr\/local/\/usr/" Makefile &&

  default_make &&
  install -m755 GrabWeather /usr/bin

  ) > $C_FIFO 2>&1

