autoreconf -i &&

export PYTHONDONTWRITEBYTECODE=1

OPTS+=" --enable-lua-site-install --enable-static --enable-shared --enable-perl-site-install"

default_config &&

sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&
# Else it installs some libs in /usr/lcaol
sedit 's:/usr/local:/usr:g' bindings/lua/Makefile &&

default_make
