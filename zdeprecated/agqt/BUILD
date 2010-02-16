(
  make clean &&
  sedit "s!/usr/local/bin!/usr/bin!" Makefile &&
  cd ag &&
  sedit "s/-O6 -g/$CXXFLAGS/" Makefile &&
  cd .. &&
  cd am &&
  sedit "s/-O6 -g/$CXXFLAGS/" Makefile &&
  cd .. &&
  cd fdb &&
  sedit "s/-O6 -g/$CXXFLAGS/" Makefile &&
  cd .. &&
  cd hammer &&
  sedit "s/g++/g++ $CXXFLAGS/" Makefile &&
  make clean &&
  make &&
  cd .. && 
  make             &&
  prepare_install  &&
  make install &&
  cp hammer/hammer /usr/bin &&
  cp agrc.sample /etc/skel/.agrc
) > $C_FIFO 2>&1
