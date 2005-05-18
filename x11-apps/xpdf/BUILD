(

for PATCH in $SOURCE2 $SOURCE3 $SOURCE4; do
  patch -d xpdf -Np0 -i $SOURCE_CACHE/$PATCH;
done &&

patch_it $SOURCE5 1 &&

OPTS="$OPTS --with-freetype2-includes=/usr/include/freetype2 \
            --with-gzip" &&

# Need these exports to fix the freetype2 problems when freetype2 > 2.1.5
export CXXFLAGS="-I/usr/include/freetype2 -I/usr/include" &&
export CPPFLAGS="-I/usr/include" &&

default_build

) > $C_FIFO 2>&1
