source /etc/profile.d/qt6.rc &&
export LANG='en_US.UTF-8'

sedit '28i #include <qvariant.h>' sip/QtWebEngineCore/qwebengineframe.sip &&

sip-build --verbose --qmake=/usr/lib/qt6/bin/qmake6 &&
cd build &&
default_make
