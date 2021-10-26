if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -DDISABLE_WERROR=ON" &&

default_cmake_build &&

if [[ "`get_module_config DUMP_PRIV`" = "y" ]]; then
  setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
fi
