autoreconf --install &&

OPTS+=" --enable-ofono"

mkdir build &&
cd build &&

../configure --prefix=/usr \
             --sysconfdir=/etc \
	     $OPTS &&

default_make &&

install -Dm0644 $SCRIPT_DIRECTORY/bluealsa.conf /etc/default/bluealsa
