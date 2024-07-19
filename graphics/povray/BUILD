cd unix &&
sed 's/automake --w/automake --add-missing --w/g' -i prebuild.sh &&
sed 's/dist-bzip2/dist-bzip2 subdir-objects/g' -i configure.ac &&
./prebuild.sh &&

cd ../ &&
patch -p0 < $SCRIPT_DIRECTORY/povray-user-conf.patch &&
autoreconf &&

./configure COMPILED_BY="Lunar-Linux" --prefix=/usr --sysconfdir=/etc $OPTS &&
make CXXFLAGS+='-std=c++11 -lboost_system -lboost_thread -DBOOST_BIND_GLOBAL_PLACEHOLDERS=1 -w' &&

prepare_install &&
make install &&

rm -rf /root/.povray

