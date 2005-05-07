(
   message " ${PROBLEM_COLOR}Warning! ${DEFAULT_COLOR}This module compiles and must be installed only on 2.6.x kernels."
   sleep 5

   prepare_install           &&
   cd subfs-$VERSION         &&
   make                      &&
   make install              &&
   
   cd ../submountd-$VERSION  &&
   ./configure $OPTS         &&
   make                      &&
   make install 

) > $C_FIFO 2>&1
