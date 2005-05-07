(

  ./configure   --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
		--disable-alsa-dsp	  \
                $OPTS                     &&
  default_make
  
) > $C_FIFO 2>&1
