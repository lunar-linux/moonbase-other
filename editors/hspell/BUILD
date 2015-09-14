OPTS+=" --enable-fatverb  \
        --enable-linginfo \
        --enable-shared   \
        --disable-test"  &&

#sedit "s:/usr/bin:/bin:" wzip &&

default_config &&
make hunspell  &&
default_make   &&

# rm the static lib
rm -f /usr/lib/libhspell.a
