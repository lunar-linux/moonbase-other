(

  mkdir -p /var/lib/lynx  &&

  ./configure   --host=$BUILD            \
                --prefix=/usr            \
                --libdir=/var/lib/lynx   \
		--enable-cgi-links       \
		--enable-nsl-fork        \
		--enable-read-eta        \
		--enable-color-style     \
		--enable-scrollbar       \
		--with-zlib              \
		--sysconfdir=/etc        \
                --enable-gzip-help       \
                --mandir=/usr/share/man  \
                $OPTS                   &&

  default_make       &&
  make install-help  &&
  make install-doc   &&
  
  cp -bp lynx.cfg /var/lib/lynx/lynx.cfg  &&
  ln -sf /var/lib/lynx/lynx.cfg /etc/lynx.cfg  &&
  rm -f  /usr/bin/lynx.old

) > $C_FIFO 2>&1
