make &&

prepare_install &&

install -d /usr/{bin,share/{doc/gdisk,man/man8}} &&
install -t /usr/bin {,c,s}gdisk fixparts &&
install -m644 -t /usr/share/man/man8 {{,c,s}gdisk,fixparts}.8 &&
install -m644 -t /usr/share/doc/gdisk README NEWS
