if in_depends $MODULE qt6-5compat; then
  . /etc/profile.d/qt6.rc
  OPTS=" -DUSE_qt6=ON"
fi &&

default_cmake_build &&

if [[ "`get_module_config DUMP_PRIV`" = "y" ]]; then
  setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
fi
