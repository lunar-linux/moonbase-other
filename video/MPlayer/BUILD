(

  if [ $MENCODER == "n" ] ; then
    OPTS=$OPTS" --disable-mencoder"
  fi

  if [ $OSD == "y" ] ; then
    OPTS=$OPTS" --enable-menu"
  fi

  if module_installed kernel-headers-2.6; then
    OPTS="$OPTS --disable-fbdev"
  fi

  cd $SOURCE_DIRECTORY &&

  ./configure --prefix=/usr                   \
  	      --confdir=/etc                  \
	      --mandir=/usr/share/man         \
              --with-codecsdir=/usr/lib/win32 \
              --enable-linux-devfs	      \
              --enable-largefiles	      \
              --confdir=/etc/mplayer	      \
              --datadir=/usr/share/mplayer    \
	      $OPTS &&

  default_make &&

  gather_docs etc/* 		      &&
  install -d /usr/share/mplayer/Skin  &&
  install -d /etc/mplayer	      &&
  install -m644 etc/codecs.conf /usr/share/mplayer/  	   &&
  install -m644 etc/example.conf /etc/mplayer/mplayer.conf &&
  install -m644 etc/input.conf /etc/mplayer/ 		   &&

  cp -a Skin/Blue /usr/share/mplayer/Skin/ &&
  ln -sf /usr/share/mplayer/Skin/Blue /usr/share/mplayer/Skin/default &&

  cp -a fonts /usr/share/mplayer/  &&
  rm -rf /usr/share/mplayer/font   &&
  ln -sf fonts/font-arial-iso-8859-1/font-arial-18-iso-8859-1 /usr/share/mplayer/font

) > $C_FIFO 2>&1
