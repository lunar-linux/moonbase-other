# Prevent hostname/dnsdomainname conflicts with inetutils
if module_installed inetutils; then
  export HAVE_HOSTNAME_TOOLS=0
fi &&

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

export BINDIR='/usr/bin' SBINDIR='/usr/bin'
make &&
prepare_install &&

make BASEDIR=/ install &&
install -m 755 $SCRIPT_DIRECTORY/ifup   /usr/sbin &&
install -m 755 $SCRIPT_DIRECTORY/ifdown /usr/sbin
