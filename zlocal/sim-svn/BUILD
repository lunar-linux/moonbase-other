(

  cd $SOURCE_DIRECTORY &&

  bad_flags compiler

  ./configure --prefix=/usr                   \
	      --disable-gui		      \
	      --disable-inet6		      \
	      --enable-faad-external	      \
	      --enable-dynamic-plugins	      \
  	      --confdir=/etc                  \
	      --mandir=/usr/share/man         \
              --win32codecsdir=/usr/lib/win32 \
              --enable-largefiles	      \
              --confdir=/etc/mplayer	      \
              --datadir=/usr/share/mplayer    \
	      $OPTS &&

  default_make &&

  gather_docs etc/* 		      &&
  install -d /usr/share/mplayer/Skin \
	     /etc/mplayer &&
  install -m644 etc/codecs.conf /usr/share/mplayer/  	   &&
  install -m644 etc/example.conf /etc/mplayer/mplayer.conf &&
  install -m644 etc/input.conf /etc/mplayer/ 		   &&

  cp -a Skin/Blue /usr/share/mplayer/Skin/ &&
  ln -sf /usr/share/mplayer/Skin/Blue /usr/share/mplayer/Skin/default

) > $C_FIFO 2>&1
