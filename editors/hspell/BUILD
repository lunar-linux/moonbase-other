OPTS+=" --enable-fatverb  \
        --enable-linginfo \
        --enable-shared"  &&

sedit "s:/usr/bin:/bin:" wzip &&
sedit "s:PrefixBits.pl:./PrefixBits.pl:" genprefixes.pl binarize-desc.pl &&
sedit "s:pl PrefixBits.pl:pl ./PrefixBits.pl:g" Makefile.in &&

autoreconf -fi &&
default_config &&
default_make   &&
# rm the static lib
rm -f /usr/lib/libhspell.a
