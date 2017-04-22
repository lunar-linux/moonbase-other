OPTS+=" --prefix=/usr --enable-R-shlib --sysconfdir=/etc/R" &&

default_build &&

# This is needed so cantor-15.04.1 will build
cd src/nmath/standalone &&
make shared &&
prepare_install &&
make install &&
cd $SOURCE_DIRECTORY &&

if [[ "$DVI_DOCS" == "y" ]]; then
   make dvi &&
   make install-dvi
fi &&

if [[ "$PDF_DOCS" == "y" ]]; then
  make pdf &&
  make install-pdf
fi &&

if [[ "$INFO_DOCS" == "y" ]]; then
  make info &&
  make install-info
fi
