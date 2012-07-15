(

  OPTS+=" --disable-uforadiant  "  &&

  ./configure  --build=$BUILD                 \
               --prefix=/usr                  \
               --sysconfdir=/etc              \
               --localstatedir=/var/games     \
               --infodir=/usr/share/info      \
               --mandir=/usr/share/man        \
               --bindir=/usr/games            \
               --datadir=/usr/share/games     \
               --localedir=/usr/share/locale  \
               $OPTS                         &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_make

#  for FILE in $SOURCE_DIRECTORY/base/*; do
#     install -m644 $FILE /usr/share/games/ufoai/base/
#  done

#  cp -fR $SOURCE_DIRECTORY/base /usr/share/games/ufoai

) > $C_FIFO 2>&1
