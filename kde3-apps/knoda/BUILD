(
  
  sedit "s:factory );:factory ):" hk_kdedbdesigner/hk_kdedbdesignerpartfactory.h  &&
  sedit "s:factory );:factory ):" hk_kdereportpart/hk_kdereportpartfactory.h      &&
  sedit "s:factory );:factory ):" hk_kdetablepart/hk_kdetablepartfactory.h        &&
  sedit "s:factory );:factory ):" hk_kdequerypart/hk_kdequerypartfactory.h        &&
  sedit "s:factory );:factory ):" hk_kdeformpart/hk_kdeformpartfactory.h          &&
  sedit "s:factory );:factory ):" hk_kdeqbepart/hk_kdeqbepartfactory.h            &&
    
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
	       --with-hk_classes-dir=${KDE_PREFIX:-$KDEDIR}/lib/hk_classes \
	       --with-hk_classes-incdir=${KDE_PREFIX:-$KDEDIR}/include/hk_classes \
               --disable-debug            \
               --enable-fast-malloc=full  \
               --with-xinerama            \
               $OPTS                     &&

  default_make
 
) > $C_FIFO 2>&1
