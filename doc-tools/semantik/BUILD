  . /etc/profile.d/qt5.rc &&

PYTHON=python3 PYTHON_VERSION=3.6  \
      ./waf configure --prefix=/usr   \
      --qtlibs=/usr/lib/qt5 \
      $OPTS &&

  ./waf            &&

  prepare_install  &&
  ./waf install    
