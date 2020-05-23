prepare_install &&

install -D -m755 "${MODULE}" "/usr/bin/"

# install the scripts and examples
mkdir -p "/usr/share/${MODULE}" &&
cp *.bash "/usr/share/${MODULE}/" &&
cp -R examples "/usr/share/${MODULE}/" &&

# install the documentation
mkdir -p "/usr/share/doc/${MODULE}" &&
cp README.md "/usr/share/doc/${MODULE}/" &&
cp -R docs "/usr/share/doc/${MODULE}/"
