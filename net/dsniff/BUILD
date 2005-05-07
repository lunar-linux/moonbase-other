(
cd $SOURCE_DIRECTORY &&
./configure &&
sedit "s/#define HAVE_SYS_QUEUE_H/\/\//" config.h &&
make &&
prepare_install &&
make install
) > $C_FIFO
