cd $SOURCE_DIRECTORY/C/Util/Lzma &&
sedit "s:-O2:$CFLAGS:" makefile.gcc &&
make -f makefile.gcc clean all &&

cd $SOURCE_DIRECTORY/C/Util/7z &&
sedit 's@7zAlloc.o: 7zAlloc.c@7zAlloc.o: ../../7zAlloc.c@' makefile.gcc &&
sedit "s:-O2:$CFLAGS:" makefile.gcc &&
make -f makefile.gcc clean all &&

cd $SOURCE_DIRECTORY/CPP/7zip/Bundles/LzmaCon &&
sedit "s:-O2:$CFLAGS:" makefile.gcc &&
make -f makefile.gcc clean all &&

prepare_install &&
install $SOURCE_DIRECTORY/C/Util/Lzma/_o/7lzma /usr/bin/lzma-nongnuc &&
install $SOURCE_DIRECTORY/C/Util/7z/_o/7zdec /usr/bin &&
install $SOURCE_DIRECTORY/CPP/7zip//Bundles/LzmaCon/_o/lzma /usr/bin/lzma-nongnu
