export GMAKE_NOWARN=true
export CFLAGS="$CFLAGS -std=gnu89 -fno-strict-aliasing"

make INS_BASE=/usr  \
     DEFINSUSR=root \
     DEFINSGRP=root \
     LINKMODE="dynamic"  \
     CPPOPTX="$CPPFLAGS" \
     COPTX="$CFLAGS"   \
     LDOPTX="$LDFLAGS" \
     GMAKE_NOWARN="true" &&

prepare_install &&

make INS_BASE=/usr  \
     DEFINSUSR=root \
     DEFINSGRP=root \
     MANDIR=man     \
     LINKMODE="dynamic"  \
     CPPOPTX="$CPPFLAGS" \
     COPTX="$CFLAGS"   \
     LDOPTX="$LDFLAGS" \
     GMAKE_NOWARN="true" install &&

install -m755 cdda2wav/{pitchplay,readmult} /usr/bin &&
ln -sf /usr/bin/mkisofs  /usr/bin/genisoimage &&
ln -sf /usr/bin/cdda2wav /usr/bin/icedax &&
ln -sf /usr/bin/readcd   /usr/bin/readom &&
ln -sf /usr/bin/cdrecord /usr/bin/wodim  &&
ln -sf /usr/bin/rscsi /usr/bin/netscsid
