(
####### DO NOT FSCK WITH THIS UNLESS YOU REALLY KNOW WHAT YOU ARE DOING!!!!! #######
####### I SPENT 13 HOURS WORKING ON IT AND I DO NOT WANT TO HAVE TO TOUCH IT #######
####### AGAIN ANY TIME SOON!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! #######
####### --CSM #######

  cat $SCRIPT_DIRECTORY/imlib-ac25x.patch                     | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/imlib-1.9-m4.patch.bz2              | patch -p0  &&
  bzcat $SCRIPT_DIRECTORY/imlib-1.9.10-path.patch.bz2         | patch -p1  &&
  bzcat $SCRIPT_DIRECTORY/imlib-1.9.14-no-locincpth.patch.bz2 | patch -p1  &&

  rm -rf missing                                &&
  gettextize --copy --force                     &&
  libtoolize --force                            &&
  aclocal                                       &&
  autoconf                                      &&
  automake -a -c -f                             &&
  
  ./configure  --prefix=/usr                   \
               --includedir=/usr/include       \
               --x-includes=/usr/X11R6/include \
               --libdir=/usr/lib               \
               --localstatedir=/var            \
               --datadir=/usr/share            \
               --sysconfdir=/etc/imlib         \
               --infodir=/usr/share/info       \
               --mandir=/usr/share/man         &&

  default_make

) > $C_FIFO 2>&1
