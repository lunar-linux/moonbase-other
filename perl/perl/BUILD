(

  # DO NOT TOUCH THESE SEDITS UNLESS YOU KNOW WHAT YOU'RE DOING!

  # Really enable threads
  sedit 's/libswanted=\"\$\*\"/libswanted=\"pthread\ \$\*\"/' hints/linux.sh
  
  # Work around the segfaults. Doesn't do any harm
  sedit 's/\$(COMPILE)//' Makefile.SH &&

  # Does harm if you run make test .. which we do not do
  sedit 's/COMPILE/SOMETHING/' installperl &&

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
		     -Dccdlflags='-rdynamic' \
		     -Doptimize="${CFLAGS}" \
		     -Duselargefiles \
		     -Ud_csh \
		     -Dcf_by='Lunar' \
                     $OPTS \
		     -Dman1dir=/usr/share/man/man1 \
		     -Dusethreads	\
                     -Dman3dir=/usr/share/man/man3 -d -e 
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
