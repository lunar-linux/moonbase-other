(

  case  $GUI  in
    y|Y|j|J)  OPTS="$OPTS  --enable-gui"  ;;
  esac

  CFLAGS= ./configure  --prefix=/usr  \
               $OPTS          &&
  cd $SOURCE_DIRECTORY        &&
  echo `pwd`                  &&
  sedit "s/MANDIR = \${prefix}\/man/MANDIR =\/usr\/share\/man/" Makefile  &&
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

  cp -r  fonts  /usr/share/mplayer
  
  if [ -d /usr/share/mplayer/font ]; then
    rm -rf /usr/share/mplayer/font
  fi

  ln -sf /usr/share/mplayer/fonts/iso-8859-1/arial-18 /usr/share/mplayer/font

  case  $GUI  in
    y|Y|j|J)  cp     -r  Skin   /usr/share/mplayer
              ;;
          *)  true  ;;
  esac

) > $C_FIFO 2>&1
