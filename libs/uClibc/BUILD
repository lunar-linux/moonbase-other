(
   bzcat $SCRIPT_DIRECTORY/.config.bz2 > .config    &&
   sedit "s/\#-DUSE_CACHE/ -DUSE_CACHE/" Rules.mak  &&
   sedit "s/\usr\/bin\/awk/\/bin\/awk/" Rules.mak   &&
   bzcat $SCRIPT_DIRECTORY/Makefile.diff.bz2 | patch -p 0 &&

   make                                             &&
   prepare_install                                  &&
   
   make install

) > $C_FIFO 2>&1
