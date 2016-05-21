prepare_install &&

install -d /usr/{bin,share/{$MODULE,man/man1}} &&
install -m644 makeself.lsm /usr/share/$MODULE &&
install -m644 makeself.1 /usr/share/man/man1/ &&
install -m755 makeself.sh /usr/bin/makeself &&
install -m755 makeself-header.sh /usr/share/$MODULE &&

gather_docs README.md
