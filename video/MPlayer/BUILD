(

  if $(echo $OPTS | grep -q "enable-live") ; then
    sedit "s: -O : $CFLAGS :" live/config.linux
    sedit "s: -DBSD=1 : $CFLAGS :" live/config.linux
    ( cd live && ./genMakefiles linux && make )
    OPTS=$OPTS" --with-livelibdir=$SOURCE_DIRECTORY/live"
  fi

  unset CFLAGS
 
  ./configure --prefix=/usr                   \
              --confdir=/etc                  \
	      --mandir=/usr/share/man         \
	      $OPTS                           &&

  sedit "s/MANDIR = \${prefix}\/man/MANDIR =\/usr\/share\/man/" Makefile  &&
  # the following sedit fixes some library issues with freetype2 and xfree86
  # if MPlayer seems to be acting up and having other issues try commenting
  # this sedit
  sedit "s:FREETYPE_LIB = -lfreetype:FREETYPE_LIB = -L/usr/lib -lfreetype:" config.mak &&

  make                                        &&
  prepare_install                             &&

  make   prefix=/usr install                  &&

  mkdir -p       $DOCUMENT_DIRECTORY/mplayer  &&
  cp    -r etc/* $DOCUMENT_DIRECTORY/mplayer  &&
  mkdir -p                /usr/share/mplayer  &&
  cp    etc/codecs.conf   /usr/share/mplayer  &&

  if  [  !  -f  /etc/mplayer.conf  ];  then
    sedit  "s/include =/# include =/"  etc/example.conf
    cp                                 etc/example.conf  /etc/mplayer.conf
  fi                                          &&

  cp -r fonts /usr/share/mplayer              &&
  
  if [ -e /usr/share/mplayer/font ]; then
    rm -rf /usr/share/mplayer/font
  fi                                          &&

  rm -f /usr/share/mplayer/font &&
  ln -sf fonts/font-arial-iso-8859-1/font-arial-18-iso-8859-1 /usr/share/mplayer/font

) > $C_FIFO 2>&1
