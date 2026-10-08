# The --data-dir switch is broken so we need to sedit the path.
sedit 's:\$(pkgdatadir):/usr/share/autoconf-mozilla:g' Makefile.in &&

# We don't need info
sedit "s:install-info-am install-man:install-man:" Makefile.in &&

OPTS+=" --prefix=/usr    \
        --libdir=/usr/lib/$MODULE \
        --program-suffix=-$VERSION"

default_build
