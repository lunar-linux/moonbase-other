(
  cd $SOURCE_DIRECTORY/src/unix     &&
  ./configure 	--prefix=/usr   \
	 	--enable-ffi	\
		$OPTS	&&

  cd ..
  make                     &&
  prepare_install          &&
  make install

) > $C_FIFO 2>&1
