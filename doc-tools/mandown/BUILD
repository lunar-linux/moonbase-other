sedit 's:/usr/local:/usr:' Makefile &&
# else it tries to install it in /root
sedit 's: ~/.config/mdn:/etc/mdn:' Makefile &&

prepare_install &&
make install &&

rm /usr/lib/libmandown.a
