( 
#i know this is cheap but its a library versioning issue that will
#hopefully go away soon -- HardKrash
mv doc/gpgme.info doc/gpgme-0.3.x.info 	&&
mv doc/gpgme.info-1 doc/gpgme-0.3.x.info-1 	&&
mv doc/gpgme.info-2 doc/gpgme-0.3.x.info-2 	&&
mv doc/gpgme.info-3 doc/gpgme-0.3.x.info-3 	&&
mv doc/gpgme.info-4 doc/gpgme-0.3.x.info-4 	&&


echo CFLAGS:= $CFLAGS                   &&
echo OPTS:= $OPTS                       &&
set -x && #Let's show the logs what we've used for debug
./autogen
./configure  --build=$BUILD            \
	--prefix=/opt/lunar/gpgme-0.3.x             \
	--sysconfdir=/etc         \
	--localstatedir=/var      \
	--infodir=/usr/share/info \
$OPTS                     &&
set +x      ##turn it off so that the logs stay readable
sedit "s:INFO_DEPS = gpgme.info:INFO_DEPS = gpgme-0.3.x.info:" doc/Makefile
default_make
) > $C_FIFO 2>&1
