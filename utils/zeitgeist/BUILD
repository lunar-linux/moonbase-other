git cherry-pick -n 1be2a5fff77cdf61c843edc8356dfdef3fd2dbfc 33ab4cce74857f928382ba6cfada111a64dafe88 &&

autoreconf -fi &&

OPTS+=" --enable-fts \
        --disable-docs \
        --disable-datahub \
        --sysconfdir=/etc \
        --localstatedir=/var \
        --libexecdir=/usr/lib \
        --enable-introspection"

default_build
