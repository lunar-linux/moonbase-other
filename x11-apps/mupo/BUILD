(

sedit "s/-.\/\$@.x86/strip mupo.x86/" Makefile &&
sedit "s/-O2/$CFLAGS/" Makefile &&
make MACH=x86   &&
prepare_install &&
mkdir -p $DOCUMENT_DIRECTORY/mupo &&
mkdir -p $DOCUMENT_DIRECTORY/mupo/icons &&
cp mupo_default.dat $DOCUMENT_DIRECTORY/mupo &&
chmod 644 *.xpm README* &&
cp *.xpm $DOCUMENT_DIRECTORY/mupo/icons &&
cp mupo.x86 /usr/bin/mupo

) > $C_FIFO 2>&1
