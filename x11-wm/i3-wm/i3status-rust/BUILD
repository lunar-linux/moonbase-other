cargo build --release --locked &&

prepare_install &&

install -Dt /usr/bin target/release/i3status-rs &&
install -Dm644 -t /usr/share/doc/$pkgname/examples example_*.toml

