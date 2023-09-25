prepare_install &&

sedit "s@/bin/true@/usr&@g" laptop-detect &&
install -D -m755 laptop-detect "/usr/bin/laptop-detect" &&
install -D -m644 laptop-detect.1 "/usr/share/man/man1/laptop-detect.1" &&
gzip "/usr/share/man/man1/laptop-detect.1"
