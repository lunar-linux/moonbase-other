( 
./configure --libexecdir=/usr/libexec &&
xmkmf			&&
sedit "s:/usr/local/man:/usr/share/man:" Makefile &&
make includes		&&
make			&&
prepare_install		&&
make install		&&
make install.man
) > $C_FIFO 2>&1
