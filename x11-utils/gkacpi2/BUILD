(
  cd $SOURCE_DIRECTORY &&
  sedit "s:PLUGIN_DIR ?= ~/.gkrellm2/plugins:PLUGIN_DIR ?= /usr/lib/gkrellm2/plugins:g" Makefile &&
  make &&
  prepare_install
  mkdir -p /usr/lib/gkrellm2/plugins &&
  make install
  
) > $C_FIFO 2>&1
