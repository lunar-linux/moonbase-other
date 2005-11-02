(

  sedit 's:artdir = $(prefix):artdir = $(datadir):' doc/art/Makefile.in &&
  sedit 's:screenshotsdir = $(prefix):screenshotsdir = $(datadir):' doc/screenshots/Makefile.in &&

  ./configure	--prefix=/usr		 \
		--mandir=/usr/share/man  \
		--with-opengl=no	 \
		$OPTS			&&

  default_make

) > $C_FIFO 2>&1
