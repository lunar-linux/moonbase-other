( 
  if [[ $UCODE == "y" ]]; then
    OPTS="$OPTS --enable-unicode"
  fi  &&
  
  ./configure   --build=$BUILD	   \
                --prefix=/usr      \
		--with-gtk         \
		--enable-optimise  \
		$OPTS             &&
  default_make                    &&

  cd contrib/src/stc  &&
  make                &&
  make install        &&
  
  cd ../ogl  &&
  make all   &&
  make install

) > $C_FIFO 2>&1
