(

  ./autogen.sh  &&

  ./configure    --prefix=/usr		\
                 --enable-mp3		\
                 --disable-docbook 	\
		 --with-plugindir=/opt/lunar/plugins \
		 $OPTS &&

  default_make

) > $C_FIFO 2>&1
