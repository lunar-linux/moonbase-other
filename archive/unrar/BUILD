export CXXFLAGS+=" -fPIC" &&

make clean &&
# make sfx &&
# make clean &&
make unrar lib &&

prepare_install &&

make install-unrar &&
make install-lib &&
# install default.sfx /usr/lib/ &&

# Needed because gather_docs is confused by PRE_BUILD
mkdir -p $DOCUMENT_DIRECTORY/unrar &&
cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

ln -sf libunrar.so.$VERSION /usr/lib/libunrar.so.5 &&
ln -sf libunrar.so.$VERSION /usr/lib/libunrar.so &&

#Needed by unrardll (python)
install -Dm644 dll.hpp /usr/include/unrar/dll.hpp
