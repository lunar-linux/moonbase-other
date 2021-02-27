. /etc/profile.d/qt5.rc &&

CXXFLAGS+=" -std=c++11"

python setup.py build_ext --pyqt-sip-dir=/usr/lib/python3.8/site-packages/PyQt5/bindings &&

prepare_install &&

python setup.py install --prefix=/usr --root=/
