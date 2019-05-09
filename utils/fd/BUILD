cargo build --release --locked &&

prepare_install &&

install -Dm755 target/release/fd /usr/bin/fd &&
install -Dm644 doc/fd.1 /usr/share/man/man1/fd.1 &&
install -Dm644 target/release/build/fd-find-*/out/fd.bash /usr/share/bash-completion/completions/fd
