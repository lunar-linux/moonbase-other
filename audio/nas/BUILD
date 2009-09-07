(

  xmkmf  &&
  make CDEBUGFLAGS="${CFLAGS}" \
       CXXDEBUFLAGS="${CXXFLAGS}" \
       CC="gcc" \
       CXX="g++" \
       CPP="gcc -E" \
       World  &&
  sedit 's/\($(ETCDIR)\/nasd.conf\).eg/\1/' server/Makefile  &&
  prepare_install  &&
  make install install.man  &&
  [ -f /etc/config.d/nasd ] || install -m 644 $SOURCE_CACHE/$SOURCE2 /etc/config.d/nasd  &&

  gather_docs BUILDNOTES HISTORY RELEASE TODO
 
) > $C_FIFO 2>&1
