# Unicode support patch.

bzip2 -d $SOURCE_CACHE/links-2.1pre33-utf8.diff.bz2
cp $SOURCE_CACHE/links-2.1pre33-utf8.diff $BUILD_DIRECTORY/
patch_it links-2.1pre33-utf8.diff 1
cd $SOURCE_DIRECTORY/intl && ./gen-intl && cd ..
default_build