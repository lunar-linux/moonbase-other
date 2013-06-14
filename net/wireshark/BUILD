OPTS+=" --with-ssl --enable-wireshark --enable-usr-local=no --enable-randpkt" &&

default_build &&

if [[ "`get_module_config DUMP_PRIV`" = "y" ]]; then
  setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
fi
