(

  LD_LIBRARY_PATH=/usr/lib/python2.2/site-packages
  export QTDIR="/opt/lunar/qt/3"

  prepare_install                      &&
  make                                 &&
  make  install                        &&
  mkdir -p         /usr/share/PyQt     &&
  cp -R examples3  /usr/share/PyQt     &&
  cp -R sip        /usr/share/PyQt     
##  cp eric/eric     /usr/bin            &&
##  cp -R eric       /usr/lib/python2.2/site-packages

) > $C_FIFO 2>&1
