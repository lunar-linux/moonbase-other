export LDFLAGS+=' -pthread' &&
export CXXFLAGS+=" -fPIC" &&

#make clean &&
make unrar lib &&

prepare_install &&

make install-unrar &&
make install-lib &&

# Needed because gather_docs is confused by PRE_BUILD
mkdir -p $DOCUMENT_DIRECTORY/unrar &&
cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

ln -sf libunrar.so.$VERSION /usr/lib/libunrar.so.6 &&
ln -sf libunrar.so.$VERSION /usr/lib/libunrar.so &&

#Needed by unrardll (python)
install -Dm644 dll.hpp /usr/include/unrar/dll.hpp
