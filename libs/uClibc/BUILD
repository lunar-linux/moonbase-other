(
   bzcat $SCRIPT_DIRECTORY/Config.bz2 > Config      &&
   sedit "s/\#-DUSE_CACHE/ -DUSE_CACHE/" Rules.mak  &&

   make                                             &&
   prepare_install                                  &&
   
   make install

) > $C_FIFO 2>&1
