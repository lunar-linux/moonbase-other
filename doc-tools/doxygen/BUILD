(

  if module_installed qt4; then
    . /etc/profile.d/qt4.rc
  fi &&

  OPTS+=" --prefix /usr "  &&

  if [ -f src/Makefile ]; then
    message "${MESSAGE_COLOR}Makefile's detected, doing make distclean before compiling${DEFAULT_COLOR}"  &&
    ./configure $OPTS
    make distclean
  fi &&

  ./configure $OPTS  &&

  if which python 2> /dev/null 1>&2; then
     make docs
  fi  &&
  default_make  &&

# I have notice with some apps notice during make
# the /usr/share/doc/apr/docs/doxygen.conf needs to be updated. This takes
# care of that and just in case it is not there on a fresh install.

  if [ -e /usr/share/doc/apr/docs/doxygen.conf ]; then
    doxygen -u /usr/share/doc/apr/docs/doxygen.conf
   else
    mkdir -p /usr/share/doc/apr/docs
    doxygen -s -g /usr/share/doc/apr/docs/doxygen.conf
    doxygen -u /usr/share/doc/apr/docs/doxygen.conf
  fi

) > $C_FIFO 2>&1
