(
make &&
prepare_install &&

cp -r etc/iproute2 /etc/iproute2
cp tc/tc /sbin
cd ip
cp ifcfg ip routef routel rtacct rtmon rtpr /sbin
mkdir -p $DOCUMENT_DIRECTORY/$MODULE
cp $SOURCE_CACHE/$SOURCE2 $DOCUMENT_DIRECTORY/$MODULE

) > $C_FIFO 2>&1
