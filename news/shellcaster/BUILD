prepare_install &&

cargo install --no-track --no-default-features --features "native_tls,native_certs" --root /usr --path . &&

mkdir -p /etc/${MODULE} &&
install -Dm644 ./config.toml "/etc/${MODULE}/"
