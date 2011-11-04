(

  sedit '1s@/usr/bin/awk@/bin/awk@' vidix/pci_db2c.awk &&
  # Remove subversion directories
  find -name "\.svn" -type d -print0 | xargs -0 rm -rf

  # using CFLAGS other than MPlayer's auto-detected will break
  bad_flags compiler  &&

  cd $SOURCE_DIRECTORY  &&

  ./configure --prefix=/usr                 \
              --mandir=/usr/share/man       \
              --codecsdir=/usr/lib/win32    \
              --confdir=/etc/mplayer        \
              --datadir=/usr/share/mplayer  \
              --enable-dynamic-plugins      \
              --disable-mp3lib              \
              $OPTS                        &&

  sedit 's/-mtune=native//' config.mak &&

  default_make  &&

  gather_docs etc/*                   &&
  install -d /usr/share/mplayer/Skin  &&
  install -d /etc/mplayer             &&
  install -m644 etc/codecs.conf /usr/share/mplayer/         &&
  install -m644 etc/example.conf /etc/mplayer/mplayer.conf  &&
  install -m644 etc/input.conf /etc/mplayer/                &&

  cp -a Skin/Blue /usr/share/mplayer/Skin/  &&
  ln -sf /usr/share/mplayer/Skin/Blue /usr/share/mplayer/Skin/default  &&

  cp -a fonts /usr/share/mplayer/  &&
  rm -rf /usr/share/mplayer/font   &&
  ln -sf fonts/font-arial-iso-8859-1/font-arial-18-iso-8859-1 /usr/share/mplayer/font

) > $C_FIFO 2>&1
