(

  # Fix typo
  sedit "s:tob_builddir:top_builddir:1" Makefile.comm  &&

  default_build  &&
  cd /usr/bin    &&
  if [ ! -e geqn ] ; then
    ln -sf eqn geqn
  fi  &&
  if [ ! -e gtbl ] ; then
    ln -sf tbl gtbl
  fi  &&
  if [ ! -e zsoelim ] ; then
    ln -sf soelim zsoelim
  fi

) > $C_FIFO 2>&1
