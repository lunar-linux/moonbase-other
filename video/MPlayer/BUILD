(
  case  $GUI  in
    y|Y|j|J)  OPTS="$OPTS  --enable-gui"  ;;
  esac
 
  CFLAGS= ./configure  --prefix=/usr  \
		       --with-reallibdir=/usr/lib/mplayer/rp8codecs \
                       --enable-live \
               $OPTS          &&
  cd $SOURCE_DIRECTORY        &&
  echo `pwd`                  &&
  sedit "s/MANDIR = \${prefix}\/man/MANDIR =\/usr\/share\/man/" Makefile  &&
  # the following sedit fixes some library issues with freetype2 and xfree86
  # if MPlayer seems to be acting up and having other issues try commenting
  # this sedit
  sedit "s:FREETYPE_LIB = -lfreetype:FREETYPE_LIB = -L/usr/lib -lfreetype:" config.mak &&
  make                        &&
  prepare_install             &&

  make   prefix=/usr install                   &&

  mkdir  -p       $DOCUMENT_DIRECTORY/mplayer  &&
  cp     -r  etc/* $DOCUMENT_DIRECTORY/mplayer &&
  mkdir  -p                /usr/share/mplayer  &&
  cp     etc/codecs.conf   /usr/share/mplayer  &&

  if  [  !  -f  /etc/mplayer.conf  ];  then
    sedit  "s/include =/# include =/"  etc/example.conf
    cp                                 etc/example.conf  /etc/mplayer.conf
  fi  &&

  cp -r  fonts  /usr/share/mplayer  &&
  
  if [ -e /usr/share/mplayer/font ]; then
    rm -rf /usr/share/mplayer/font
  fi &&

  cd /usr/share/mplayer &&
  ln -sf fonts/font-arial-18-iso-8859-1 font &&
  cd - &&

  case  $GUI  in
    y|Y|j|J)  cp     -r  Skin   /usr/share/mplayer
              ;;
          *)  true  ;;
  esac

) > $C_FIFO 2>&1
