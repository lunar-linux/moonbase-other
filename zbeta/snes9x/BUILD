(
 cd gtk &&
./configure --prefix=/usr \
--with-opengl \
--with-sdd1-decomp \
--with-netplay \
$OPTS

make &&
prepare_install &&
make install

) > $C_FIFO 2>&1

