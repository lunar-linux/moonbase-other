OPTS+=" --sysconfdir=/etc    \
        --localstatedir=/var \
        --enable-doc-dir=$DOCUMENT_DIRECTORY/$MODULE" &&

default_build &&

install -m755 scripts/spell scripts/ispell scripts/aspell-import /usr/bin
