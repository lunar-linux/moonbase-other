cd $SOURCE_DIRECTORY/PGF/Codec &&

touch NEWS && touch AUTHORS
libtoolize --copy --force &&
aclocal &&
automake --gnu --add-missing --copy &&
autoconf &&

default_build
