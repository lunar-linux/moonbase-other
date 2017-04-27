make -j1 distclean &&
make -j1 clean &&

cd src
echo "Building the utilities"
make -j1 &&

echo "Building the TTF fonts"
cd ../font/precompiled
gzip -d *.bdf.gz &&

prepare_install &&

TTF_DIR="/usr/share/fonts/TTF"
mkdir -p $TTF_DIR &&

echo "Install the TTF fonts"
install -D -m0644 unifont-$VERSION.ttf        $TTF_DIR/unifont.ttf &&
install -D -m0644 unifont_csur-$VERSION.ttf   $TTF_DIR/unifont_csur.ttf &&
install -D -m0644 unifont_upper-$VERSION.ttf  $TTF_DIR/unifont_upper.ttf &&
install -D -m0644 unifont_sample-$VERSION.ttf $TTF_DIR/unifont_sample.ttf &&

BDF_DIR="/usr/share/fonts/BDF"
mkdir -p $BDF_DIR &&

# for grub2
echo "Install the bdf fonts"
install -D -m0644 unifont-$VERSION.bdf $BDF_DIR/unifont.bdf &&

echo "Install the utilities"
cd $SOURCE_DIRECTORY/src
make install PREFIX="/usr" &&

echo "Install the man pages"
cd $SOURCE_DIRECTORY/man
make install PREFIX="/usr" COMPRESS=0
