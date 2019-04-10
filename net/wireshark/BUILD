if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

# The Lua support is broken now as it neeed Lua 5.2.x version
OPTS+=" -without-lua"

OPTS+=" --with-zlib \
        --disable-warnings-as-errors \
        --disable-static"

default_cmake_build &&

if [[ "`get_module_config DUMP_PRIV`" = "y" ]]; then
  setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
fi
