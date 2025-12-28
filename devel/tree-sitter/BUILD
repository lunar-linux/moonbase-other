cd crates/cli &&
cargo fetch --locked --target "$(rustc --print host-tuple)" &&
#cd crates/cli &&
#cargo build --release --locked --all-features &&

cd ../../ &&
cmake -S . -B build \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -Wno-dev &&

cmake --build build &&

cd crates/cli &&
cargo build --release --locked --offline &&

for completion in bash elvish fish nushell zsh; do
  cargo run --frozen --release -- \
  complete --shell $completion > $completion-completions
done

prepare_install &&
cd ../../ &&
cmake --install build &&

install -Dt /usr/bin target/release/$MODULE &&

cd crates/cli &&
install -Dm644 bash-completions /usr/share/bash-completion/completions/$MODULE &&
install -Dm644 elvish-completions /usr/share/elvish/lib/$MODULE.elv &&
install -Dm644 fish-completions /usr/share/fish/vendor_completions.d/$MODULE.fish &&
install -Dm644 nushell-completions /usr/share/nushell/vendor/autoload/$MODULE.nu **
install -Dm644 zsh-completions /usr/share/zsh/site-functions/_$MODULE
