export UCLDIR=/usr &&

cd src &&
make target=linux &&
cd ../doc &&

make &&
prepare_install &&

gzip -9 upx.1 &&
cp upx.1.gz /usr/share/man/man1 &&
mkdir -p $DOCUMENT_DIRECTORY/upx &&
cp upx-doc.html $DOCUMENT_DIRECTORY/upx &&
cd .. &&
cp build/debug/upx /usr/bin/upx
