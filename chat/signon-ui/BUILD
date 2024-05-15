# Don't need these
echo 'INSTALLS =' >>tests/unit/tst_inactivity_timer.pro &&
echo 'INSTALLS =' >>tests/unit/tst_signon_ui.pro &&

source /etc/profile.d/qt6.rc &&
/usr/lib/qt6/bin/qmake6 PREFIX=/usr LIBDIR=/usr/lib/qt6 $OPTS &&
default_make
