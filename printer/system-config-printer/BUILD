
./bootstrap &&

OPTS+=" --with-udevdir=/usr/lib/udev --with-udev-rules"
sed -i "s|cups.socket|org.cups.cupsd.socket|g" udev/configure-printer@.service.in &&
sedit "s|USE_KEYRING=False|USE_KEYRING=False\nexcept ValueError\:\nUSE_KEYRING=False|" jobviewer.py &&

default_build
