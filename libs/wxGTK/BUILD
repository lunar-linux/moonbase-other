( 
  patch_it $SOURCE2 0  &&

  ./configure   --build=$BUILD	\
                --prefix=/usr  \
		--enable-gtk2  \
		--enable-unicode  \
		--enable-optimise  \
		$OPTS  &&
  default_make

) > $C_FIFO 2>&1
