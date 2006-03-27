(

	if [ "$USE_LARGEFILE" == "y" ]; then
		OPTS=$OPTS" --enable-largefile"
	else
		OPTS=$OPTS" --disable-largefile"
	fi

	default_build &&
	install -m755 -g0 -o0 $SCRIPT_DIRECTORY/lesspipe.sh /usr/bin/

) > $C_FIFO 2>&1
