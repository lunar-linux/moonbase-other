(
  # seems as if the developer thinks he has an account on everyones box :) 
  # This is for version 1.1.3
  sedit "s:/home/lvanek/Projects/Own/kxmleditor/::" kxmleditor/dcopiface_shell.kidl &&
  sedit "s:/home/lvanek/Projects/Own/kxmleditor/::" part/dcopiface_part_ro.kidl     &&
  
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}      \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}   \
               --disable-debug                      \
	       --enable-final                       \
               --enable-fast-malloc=full            \
               --with-xinerama                      \
               $OPTS                                &&

  default_make
 
) > $C_FIFO 2>&1
