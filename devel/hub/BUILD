rake standalone &&
prepare_install &&
install -Dm755 hub /usr/bin/hub &&
install -d /usr/share/$MODULE &&
cp -dpr --no-preserve=ownership git-hooks /usr/share/hub/ &&
install -d /usr/share/bash-completion/completions &&
install -Dm644 etc/hub.bash_completion.sh /usr/share/bash-completion/completions/hub &&
install -Dm644 man/hub.1 /usr/share/man/man1/hub.1 &&
gather_docs LICENSE
