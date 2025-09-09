for DOCBOOK in `ls`; do
    cd $DOCBOOK
    ln -sf docbook.cat catalog
    cd ..
done &&

prepare_install &&
rm -rf old.libraries &&
mkdir -p /usr/share/sgml/docbook &&
cp -rf $BUILD_DIRECTORY/xml /usr/share/sgml/docbook &&
install -Dm755 $SCRIPT_DIRECTORY/buildDocBookCatalog /usr/bin
