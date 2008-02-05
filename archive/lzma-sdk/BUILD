(
cd $SOURCE_DIRECTORY/C/Archive/7z &&
make -f makefile.gcc clean &&
sedit "s:-O2:$CFLAGS:" makefile.gcc &&
make -f makefile.gcc &&
cd $SOURCE_DIRECTORY/CPP/7zip/Compress/LZMA_Alone &&
make -f makefile.gcc clean &&
sedit "s:-O2:$CFLAGS:" makefile.gcc &&
make -f makefile.gcc &&
prepare_install &&
install $SOURCE_DIRECTORY/C/Archive/7z/7zDec /usr/bin &&
install $SOURCE_DIRECTORY/CPP/7zip/Compress/LZMA_Alone/lzma /usr/bin/lzma-nongnu

) > $C_FIFO 2>&1
