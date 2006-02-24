(

  cd $SOURCE_DIRECTORY &&
  
  ./configure --prefix=/usr  &&

  sedit "s/#define HAVE_SYS_QUEUE_H/\/\//" config.h &&

  default_make

) > $C_FIFO
