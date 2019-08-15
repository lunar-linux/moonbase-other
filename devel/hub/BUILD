script/build &&

prepare_install &&

install -Dm755 bin/hub /usr/bin/hub &&
install -d /usr/share/bash-completion/completions &&
install -Dm644 etc/hub.bash_completion.sh /usr/share/bash-completion/completions/hub &&
make man-pages &&
install -Dm644 share/man/man1/*.1 /usr/share/man/man1 &&
gather_docs LICENSE
