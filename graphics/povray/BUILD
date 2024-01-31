rm -frv libraries/ilmbase/Imath &&

cd unix &&
sed 's/automake --w/automake --add-missing --w/g' -i prebuild.sh &&
sed 's/dist-bzip2/dist-bzip2 subdir-objects/g' -i configure.ac &&
./prebuild.sh &&
cd .. &&
./bootstrap &&

./configure COMPILED_BY='Lunar Linux' --prefix=/usr --sysconfdir=/etc/povray $OPTS &&
make CXXFLAGS+='-std=c++11 -lboost_system -lboost_thread -DBOOST_BIND_GLOBAL_PLACEHOLDERS=1 -w' &&

prepare_install &&
install -d /usr/share/{doc/,}"$MODULE-$VERSION" &&
cp -r icons include ini scenes scripts /usr/share/$MODULE-$VERSION &&
cp -r doc /usr/share/doc/$MODULE-$VERSION &&
install -Dm755 unix/povray /usr/bin/povray &&
install -Dm644 povray.conf /etc/povray/$VERSION/povray.conf &&
install -Dm644 povray.ini /etc/povray/$VERSION/povray.ini &&
install -Dm644 povray.1 /usr/share/man/man1/povray.1
