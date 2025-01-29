cd $SOURCE_DIRECTORY/C/Util/Lzma &&
make -f makefile.gcc clean all &&

cd $SOURCE_DIRECTORY/C/Util/7z &&
make -f makefile.gcc clean all &&

cd $SOURCE_DIRECTORY/CPP/7zip/Bundles/LzmaCon &&
make -f makefile.gcc clean all &&

prepare_install &&
install $SOURCE_DIRECTORY/C/Util/Lzma/_o/7lzma /usr/bin/lzma-nongnuc &&
install $SOURCE_DIRECTORY/C/Util/7z/_o/7zdec /usr/bin &&
install $SOURCE_DIRECTORY/CPP/7zip//Bundles/LzmaCon/_o/lzma /usr/bin/lzma-nongnu
