(

	if [ "$USE_PERL" == "y" ]; then
		OPTS=$OPTS" --enable-perl-regexp"
	else
		OPTS=$OPTS" --disable-perl-regexp"
	fi

	if [ "$USE_LARGEFILE" == "y" ]; then
		OPTS=$OPTS" --enable-largefile"
	else
		OPTS=$OPTS" --disable-largefile"
	fi

	if [ "$USE_NLS" == "y" ]; then
		OPTS=$OPTS" --enable-nls"
	else
		OPTS=$OPTS" --disable-nls"
	fi

	sedit "s/SYMLINK=\"ln -s\"/SYMLINK=\"ln -sf\"/" configure &&
	OPTS=$OPTS" --bindir=/bin --sbindir=/sbin --libdir=/lib --includedir=/include"
	default_build

) > $C_FIFO 2>&1
