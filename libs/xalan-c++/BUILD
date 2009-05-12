(

  export XALANCROOT=$SOURCE_DIRECTORY/c

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  cd $XALANCROOT &&

  ./runConfigure -p linux -c gcc -x g++ -P /usr &&

  default_make

) > $C_FIFO 2>&1
