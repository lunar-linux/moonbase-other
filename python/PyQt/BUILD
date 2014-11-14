
  . /etc/profile.d/qt4.rc &&

  printf "${PROBLEM_COLOR}   Be patient. It may look like nothing is happening... its just slow.""${DEFAULT_COLOR}\n" &&

  # Use new kde phonon - fixes build break when qt4 is built without old phonon
  sed -i "/generate_code(\"phonon\")/s:phonon\":&,extra_include_dirs=[\"/usr/include/phonon\"]:" configure.py &&

  if module_installed qscintilla2 ; then
    OPTS+=" --qsci-api"
  fi &&

  python ./configure.py --confirm-license $OPTS &&

  default_make                 &&
  mkdir -p /usr/share/$MODULE  &&
  cp -Rf examples /usr/share/$MODULE &&

# Do the Python-3 part
  if in_depends $MODULE Python-3 ; then
    printf "${PROBLEM_COLOR}   Be patient. It may look like nothing is happening... its just slow.""${DEFAULT_COLOR}\n" &&
    python3 ./configure.py --confirm-license $OPTS &&
    default_make
  fi
