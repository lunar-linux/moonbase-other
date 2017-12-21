. /etc/profile.d/qt5.rc &&

# For qt5-5.10.0 support
sedit "s:Qt_5_9_3}:Qt_5_9_3 Qt_5_10_0}:" sip/QtCore/QtCoremod.sip &&

OPTS+=" --no-timestamp \
        --assume-shared \
        --confirm-license \
        --qmake=/usr/lib/qt5/bin/qmake" &&

if module_installed qscintilla-qt5; then
  OPTS+=" --qsci-api"
fi &&

python3 configure.py -w $OPTS -j${MAKES} &&
find -name 'Makefile' | xargs sed -i 's|-Wl,-rpath,/usr/lib||g;s|-Wl,-rpath,.* ||g' &&
default_make &&

# Now the Python2 stuff
if in_depends $MODULE Python; then
  python configure.py -w $OPTS -j${MAKES} &&
  find -name 'Makefile' | xargs sed -i 's|-Wl,-rpath,/usr/lib||g;s|-Wl,-rpath,.* ||g' &&
  default_make
fi
