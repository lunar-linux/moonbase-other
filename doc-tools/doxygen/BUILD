(

  if in_depends doxygen qt4; then
    . /etc/profile.d/qt4.rc
  fi &&

  if [ -f src/Makefile ]; then
    message "${MESSAGE_COLOR}Makefile's detected, doing make distclean before compiling${DEFAULT_COLOR}" &&
    ./configure 
    make distclean
  fi &&

  ./configure --prefix /usr  \
              $OPTS         &&

  make             &&
  if which python 2> /dev/null 1>&2; then
     make docs
  fi               &&
  prepare_install  &&
  make install     &&

# I have notice with some apps (dirac) comes to mind, make notice during make
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
