TCL_VER=`lvu version tcl | cut -d. -f1-2`

cd unix &&

./configure --prefix=/usr \
            --mandir=/usr/share/man &&

default_make &&

make install-private-headers &&

ln -sf tclsh${TCL_VER} /usr/bin/tclsh
