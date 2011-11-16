(

  CFLAGS+=" -fPIC -O3 -I../Include"   &&
  CXXFLAGS+=" -fPIC -O3 -I../Include" &&

  sedit "s:/usr/local/:/usr/:" UFconfig/UFconfig.mk &&
  sedit "s:CC = cc:CC = gcc:" metis-4.0/Makefile.in &&
  sedit "s:OPTFLAGS = -O2:OPTFLAGS = -O3 -fPIC:" metis-4.0/Makefile.in &&

  cd metis-4.0 &&
  make  &&
  cd $SOURCE_DIRECTORY &&

  make CFLAGS+=" -fPIC" library &&
  prepare_install  &&
  make install     &&
  
  install metis-4.0/libmetis.a /usr/lib/ 

) > $C_FIFO 2>&1
