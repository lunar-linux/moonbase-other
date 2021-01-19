make linux-g++ &&
# clean .o files for PIC rebuild
make -C src/ clean &&
make linux-shared &&

prepare_install &&

install -dm0755 include/ANN &&
install -Dm0644 include/ANN/* -t /usr/include/ANN &&

# Debian names these libs in lower case, but that's not what upstream does
install -Dm0644 lib/libANN.a /usr/lib &&
install -Dm0755 lib/libANN.so /usr/lib
