#./build.sh &&

cargo fetch --offline &&

cargo build --release --frozen &&

prepare_install &&

cargo install --frozen --offline --no-track --path .  --root /usr

#strip target/debug/$MODULE &&
#install -Dm755 target/debug/$MODULE /usr/bin/
