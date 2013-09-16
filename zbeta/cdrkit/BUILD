cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
-DCMAKE_BUILD_TYPE=RELEASE             \
-Wno-dev                               \
$OPTS                                 &&

default_make  &&

# cdrtools compatibility:
if [ "$COMPAT" != n ] ; then
  ln -sf /usr/bin/genisoimage /usr/bin/mkisofs   &&
  ln -sf /usr/bin/icedax      /usr/bin/cdda2wav  &&
  ln -sf /usr/bin/readom      /usr/bin/readcd    &&
  ln -sf /usr/bin/wodim       /usr/bin/cdrecord  &&
  ln -sf /usr/sbin/netscsid   /usr/sbin/rscsi
fi
