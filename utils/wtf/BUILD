prepare_install &&
#cat acronyms.comp >> acronyms &&

install -m755 -D wtf /usr/bin/wtf &&
install -m644 -D acronyms /usr/share/wtf/acronyms &&
install -m644 -D wtf.6 /usr/share/man/man6/wtf.6 &&

install -Dm644 acronyms /usr/share/wtf/ &&
install -Dm644 acronyms.comp /usr/share/wtf/ &&
install -Dm644 acronyms-o.real /usr/share/wtf/ &&
install -Dm644 "$SOURCE_CACHE/$SOURCE2" /usr/share/wtf/
