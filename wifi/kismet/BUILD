if [ $SUIDINSTALL == "y" ]; then
  MAKE_INSTALL="make suidinstall"
else
  MAKE_INSTALL="make install"
fi &&

OPTS+=" --datadir=/usr/share \
        --localstatedir=/var \
        --sysconfdir=/etc/kismet"

default_config &&
make all plugins &&
make &&

add_priv_group kismet $$

prepare_install &&

$MAKE_INSTALL
