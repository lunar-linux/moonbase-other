if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" --with-ssl \
        --without-lua \
        --disable-static \
        --enable-usr-local=no" &&

default_build &&

if [[ "`get_module_config DUMP_PRIV`" = "y" ]]; then
  setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
fi
