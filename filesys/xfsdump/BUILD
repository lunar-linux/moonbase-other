export DEBUG=-DNDEBUG

make configure &&
./configure --prefix=/usr --exec-prefix=/usr --sbindir=/usr/sbin &&

sedit 's@^\(PKG_ROOT_SBIN_DIR = \)/sbin@\1/usr/sbin@' include/builddefs &&

make &&

prepare_install &&
make install &&
make install-dev &&

strip /usr/sbin/xfsdump /usr/sbin/xfsrestore
