EDITOR=`which $EDITOR 2>/dev/null` ||
EDITOR=`which nano` &&

OPTS+=" --with-editor=$EDITOR  \
        --with-rundir=/run/sudo \
        --with-vardir=/var/db/sudo \
        --enable-tmpfiles.d    \
        --libexecdir=/usr/lib" &&

default_build
