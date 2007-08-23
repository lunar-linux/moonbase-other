(

  perl Build.PL    &&
  ./Build          &&

  prepare_install  &&
  ./Build install  &&
  sleep 3

  # dirty workaround for problem in (Module-Build?) installation code

  WRONG=/usr/lib/perl5/site_perl/5*/*/auto/src/SDL
  if [ -d $WRONG ] ; then
    RIGHT=`echo $WRONG | sed 's:src/SDL:/SDL:'`
    if [ -h $RIGHT ] ; then
      rm $RIGHT
    fi
    if [ ! -e $RIGHT ] ; then
      echo ln -s $WRONG $RIGHT
      ln -s $WRONG $RIGHT
    fi
  fi

  WRONG=/usr/lib/perl5/site_perl/5*/*/auto/src/SDL_perl
  if [ -d $WRONG ] ; then
    RIGHT=`echo $WRONG | sed 's:src/SDL_perl:/SDL_perl:'`
    if [ -h $RIGHT ] ; then
      rm $RIGHT
    fi
    if [ ! -e $RIGHT ] ; then
      echo ln -s $WRONG $RIGHT
      ln -s $WRONG $RIGHT
    fi
  fi

) > $C_FIFO 2>&1
