(
   bzcat $SCRIPT_DIRECTORY/.config.bz2 > .config    &&
   sedit "s/\#-DUSE_CACHE/ -DUSE_CACHE/" Rules.mak  &&
   sedit "s/\usr\/bin\/awk/\/bin\/awk/" Rules.mak   &&
   patch_it $SOURCE_CACHE/$SOURCE2 0                &&
   sedit "s/TARGETS += ldconfig/#TARGETS += ldconfig/" ldso/util/Makefile &&

   default_make

) > $C_FIFO 2>&1
