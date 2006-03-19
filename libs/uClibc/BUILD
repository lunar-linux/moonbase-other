(
   bad_flags ALL &&
   cp $SOURCE_CACHE/$SOURCE3 .config                &&
   sedit "s/\#-DUSE_CACHE/ -DUSE_CACHE/" Rules.mak  &&
   patch_it $SOURCE_CACHE/$SOURCE2 1                &&

   default_make

) > $C_FIFO 2>&1
