sedit 's:/bin/ls:/usr/bin/ls:' GNUmakefile &&

export CFLAGS=""

make &&

prepare_install &&

install -d "/usr/lib/vlang" "/usr/share/vlang" "/usr/bin" &&
install -Dm755 v "/usr/lib/vlang" &&
cp -a examples "/usr/share/vlang/" &&

rm -fR thirdparty/tcc &&
cp -a thirdparty "/usr/lib/vlang/" &&

cp -a vlib "/usr/lib/vlang/" &&
ln -s /usr/lib/vlang/v "/usr/bin/v"
