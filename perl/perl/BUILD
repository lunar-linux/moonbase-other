(

  if [ "$USE_SUIDPERL" == "y" ] ; then
	OPTS="$OPTS -Dd_dosuid"
  fi
	
  if [ "$CUSTOM" == "y" ] ; then
	./Configure  -Dprefix=/usr   \
		     -Duseshrplib=true	\
		     $OPTS \
                     -Dman1dir=/usr/share/man/man1 \
                     -Dman3dir=/usr/share/man/man3 -e
  else
        ./Configure  -Dprefix=/usr   \
		     -Duseshrplib=true	\
                     $OPTS \
		     -Dman1dir=/usr/share/man/man1 \
		     -Dusethreads	\
                     -Dman3dir=/usr/share/man/man3 -ds -e 
  fi && 
 
  make	  		&&

  export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SOURCE_DIRECTORY" &&
  ldconfig		&&

  prepare_install	&&
  make install		&&

  strip --strip-unneeded $(which perl) &&
  
  if [ "$SUIDPERL" == "y" ] ; then
    strip --strip-unneeded $(which perl)
  fi

) > $C_FIFO 2>&1
