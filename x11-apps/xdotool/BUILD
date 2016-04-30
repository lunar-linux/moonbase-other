make WITHOUT_RPATH_FIX=1 &&

prepare_install &&

make PREFIX=/usr INSTALLMAN=/usr/share/man install &&

# Remove execute bit from header file
chmod -x /usr/include/xdo.h
