(
   bzcat $SCRIPT_DIRECTORY/.config.bz2 > .config    &&
   sedit "s/\#-DUSE_CACHE/ -DUSE_CACHE/" Rules.mak  &&
   patch_it $SOURCE_CACHE/$SOURCE2 0                &&

   default_make

) > $C_FIFO 2>&1
