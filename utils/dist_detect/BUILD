prepare_install &&

# uncompress the man page as lunar can take care of 
# compressing this page after install
gzip -d *.gz &&

install -Dm0755 dist_detect_main /usr/bin/dist_detect &&
install -Dm0755 dist_detect.1 /usr/share/man/man1/dist_detect.1
