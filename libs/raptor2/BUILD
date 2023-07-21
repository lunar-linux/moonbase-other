autoreconf -fvi &&
OPTS+="  --program-transform-name='s/rapper*/rapper2/' --enable-release --disable-gtk-doc-html" &&

default_config &&

sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&
default_make
