(
  export QTDIR=/opt/lunar/qt/3
  export KDEDIR=/opt/lunar/kde/3

  sedit "s/\"3.7\"/\"3.8\"/" ./build.py &&
  cd sip &&
  patch_it $SCRIPT_DIRECTORY/kzip.patch 0 &&
  cd .. &&
  python ./build.py -v /usr/share/PyQt/sip/ &&  
  
  make                                 &&
  prepare_install                      &&
  make  install                        &&

  mkdir -p /usr/share/PyKDE	       &&
  cp -Rf examples /usr/share/PyKDE
) > $C_FIFO 2>&1
