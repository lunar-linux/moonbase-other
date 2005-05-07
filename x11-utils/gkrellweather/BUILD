(

if [ ! -e /usr/lib/gkrellm2/plugins ]; then
   mkdir -p /usr/lib/gkrellm2/plugins
fi                                                           &&
sedit "s/\/usr\/local\/lib\/gkrellm2\/plugins/\/usr\/lib\/gkrellm2\/plugins/" Makefile &&
sedit "s/\/usr\/local\/share\/locale/\/usr\/share\/locale/" Makefile  &&
make                                                         &&
prepare_install                                              &&
make  install

  ) > $C_FIFO 2>&1

