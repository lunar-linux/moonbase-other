if [ -f $CONFIG_CACHE/net-tools.config.h ]; then
  cp $CONFIG_CACHE/net-tools.config.h config.h
else
  if [ "$(get_module_config AUTOCONF)" == "y" ]; then
    NET_TOOLS_AUTOCONF=1 ./configure.sh config.in
  else
    ./configure.sh config.in
    fi &&
  cp config.h $CONFIG_CACHE/net-tools.config.h
fi &&

# curent kernel and kernel-headers do not contain linux/if_strip.h
sedit "s:HAVE_HWSTRIP 1:HAVE_HWSTRIP 0:" config.h &&

make &&
prepare_install &&

make BASEDIR=/usr install &&
install -m 755 $SCRIPT_DIRECTORY/ifup   /usr/sbin &&
install -m 755 $SCRIPT_DIRECTORY/ifdown /usr/sbin
