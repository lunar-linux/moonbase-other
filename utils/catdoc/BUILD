patch_it $SOURCE2 1 &&
patch_it $SOURCE3 1 &&

sedit "s:AC_SUBST(WORDS_BIGENDIAN DEFS):AC_SUBST(DEFS):" configure.in &&

mkdir -p /usr/share/catdoc/ascii.specchars &&
autoconf -f &&

default_build
