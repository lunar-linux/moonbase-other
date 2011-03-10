(

  . /etc/profile.d/qt4.rc &&


  printf "${PROBLEM_COLOR}   Be patient. It may look like nothing is happening... its just slow.""${DEFAULT_COLOR}\n" &&

  python ./configure.py      \
         --confirm-license   \
         $OPTS              &&

  default_make                 &&
  mkdir -p /usr/share/$MODULE  &&
  cp -Rf examples /usr/share/$MODULE

) > $C_FIFO 2>&1
