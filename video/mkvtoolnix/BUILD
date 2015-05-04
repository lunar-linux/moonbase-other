  # Temporary define to build against boost 1.58
  CXXFLAGS+=' -DBOOST_CODECVT_DO_LENGTH_CONST=const' &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc &&
    default_config &&
    ./drake
   else
    default_config &&
    ./drake
  fi &&

  prepare_install &&
  ./drake install
