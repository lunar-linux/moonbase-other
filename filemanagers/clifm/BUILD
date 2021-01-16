gcc -O3 -march=native -s -fstack-protector-strong -lcap -lreadline -lacl -o "$MODULE" "${MODULE}.c" &&

prepare_install

install -Dm755 "$MODULE" /usr/bin/ &&
install -g 0 -o 0 -Dm644 manpage "/usr/share/man/man1/${MODULE}.1" &&
install -g 0 -o 0 -Dm644 "translations/spanish/${MODULE}.mo" "/usr/share/locale/es/LC_MESSAGES/${MODULE}.mo"
