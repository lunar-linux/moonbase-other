# TCL_VER=`lvu version tcl | cut -d. -f1-2`
TCL_VER=${VERSION%.*}

cd unix &&

./configure --prefix=/usr \
            --mandir=/usr/share/man \
            --enable-threads \
	        --disable-rpath \
	        --enable-64bit  \
            $OPTS &&

export LD_LIBRARY_PATH="$PWD:$LD_LIBRARY_PATH" &&

default_make &&

make install-private-headers &&

ln -sf tclsh${TCL_VER} /usr/bin/tclsh &&
ln -sf libtcl${TCL_VER}.so /usr/lib/libtcl.so &&
install -Dm644 tcl.m4 -t /usr/share/aclocal &&
chmod 644 /usr/lib/libtclstub.a
