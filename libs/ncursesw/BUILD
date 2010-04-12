(

  if $(in_depends ncurses gpm); then
    OPTS+=" --with-gpm"
  else
    OPTS+=" --without-gpm"
  fi
  if [ $WITH_DEBUG == "y" ]; then
    OPTS="$OPTS --with-debug"
  else
    OPTS="$OPTS --without-debug"
  fi;

  if [ $WITH_PROFILING == "y" ]; then
    OPTS="$OPTS --with-profile"
  else
    OPTS="$OPTS --without-profile"
  fi;

# ************************ WARNING *************************
# DO NOT MESS WITH THE CONFIGURE STUFF here unless you
# really know what you're doing! We chose the lib location
# specifically so we could link ncurses to bash which is 
# needed at init time! If you move it you could break your 
# system!
unset CC CXX 

set -x
  ./configure  --build=$BUILD                            \
               --prefix=/usr                             \
               --libdir=/lib                             \
               --with-normal                             \
               --with-shared                             \
               --mandir=/usr/share/man                   \
               --with-manpage-format=gzip                \
               --disable-termcap                         \
               --enable-colorfgbg                        \
               --with-terminfo-dirs=/usr/share/terminfo  \
               --enable-widec                            \
               $OPTS                                    &&
set +x  &&
  make  &&
  prepare_install  &&
  cp -a lib/*w.so* /lib/  &&
  ldconfig

) > $C_FIFO 2>&1
