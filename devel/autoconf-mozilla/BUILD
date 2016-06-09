# The --data-dir switch is broken so we need to sedit the path.
sedit "s:datadir)/autoconf:datadir)/autoconf-mozilla:" Makefile.in &&

# We don't need info
sedit "s:installdirs install-info:installdirs:" Makefile.in &&

OPTS+=" --prefix=/usr      \
        --libdir=$MODULE   \
        --disable-docs     \
        --program-suffix=-mozilla" &&

default_build
