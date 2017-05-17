export UCLDIR=/usr &&

cd src &&
make target=linux &&
cd ../doc &&

make &&
prepare_install &&

gzip -9 upx.1 &&
cp upx.1.gz /usr/share/man/man1 &&
mkdir -p $DOCUMENT_DIRECTORY/upx &&
cp upx.html upx.doc $DOCUMENT_DIRECTORY/upx &&
cp ../src/upx.out /usr/bin/upx
