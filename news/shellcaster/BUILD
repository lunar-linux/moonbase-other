prepare_install &&

cargo install --no-track --locked --no-default-features --features "native-tls" --root /usr --path . &&

mkdir -p /etc/${MODULE} &&
install -Dm644 ./config.toml "/etc/${MODULE}/"
