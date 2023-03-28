. /etc/profile.d/qt5.rc &&

PYTHON=python3 PYTHON_VERSION=$(lvu version python|cut -d. -f1-2) \
      ./waf configure clean build --prefix=/usr \
      $OPTS &&

./waf &&

prepare_install &&

./waf install --nomimes --noldconfig --nogtkicons
