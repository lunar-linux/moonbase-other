(
  sedit "s/\/usr\/local\/lib\/gkrellm2\/plugins/\/usr\/lib\/gkrellm2\/plugins/" Makefile &&
  sedit "s/\/usr\/local\/lib\/gkrellm2\/plugins\/pinger/\/usr\/lib\/gkrellm2\/plugins\/pinger/" multiping.c &&
  make                                         &&
  prepare_install                              &&
  make install

) > $C_FIFO 2>&1
