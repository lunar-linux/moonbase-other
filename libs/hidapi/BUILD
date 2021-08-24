sed -i -e 's:PKG_CHECK_MODULES(\[fox\], .*):AC_SUBST(fox_CFLAGS,[ ])AC_SUBST(fox_LIBS,[ ]):' configure.ac &&

sed -i -e 's:\([A-Z_]\+\)+="\(.*\)":\1="${\1}\2":g' \
                -e 's:\([A-Z_]\+\)+=`\(.*\)`:\1="${\1}\2":g' configure.ac &&

autoreconf -f -i -s&&
default_build
