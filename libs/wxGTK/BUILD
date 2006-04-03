( 
  if [[ $UCODE == "y" ]]; then
    OPTS="$OPTS --enable-unicode"
  fi  &&
  
  ./configure   --build=$BUILD	   \
                --prefix=/usr      \
		--with-gtk         \
		--enable-shared	   \
		--enable-optimise  \
		$OPTS             &&
  default_make                    &&

  for DIR in contrib/src/stc \
	     contrib/src/gizmos \
	     contrib/src/ogl;
  do

  cd $DIR;
  make;
  make install;
  cd $SOURCE_DIRECTORY;

  done

) > $C_FIFO 2>&1
