cargo build --release --all-features &&

# Generate and install shell completions
mkdir -p completions &&
target/release/$MODULE gen-completions -s bash -o completions/ &&
target/release/$MODULE gen-completions -s fish -o completions/ &&
target/release/$MODULE gen-completions -s zsh -o completions/ &&

# Generate and install man pages
target/release/$MODULE gen-completions --shell bash --out-dir . > /dev/null &&

prepare_install &&

install -Dt /usr/bin target/release/$MODULE &&

if module_installed bash-completion; then
  install -Dm644 "completions/$MODULE.bash" "/usr/share/bash-completion/completions/$MODULE"
fi &&

if module_installed zsh; then
  install -Dm644 "completions/_$MODULE" "/usr/share/zsh/site-functions/_$MODULE"
fi &&

if module_installed fish; then
  install -Dm644 "completions/$MODULE.fish" "/usr/share/fish/vendor_completions.d/$MODULE.fish"
fi &&

if [ -f "$MODULE.1" ]; then
  install -Dm644 "$MODULE.1" "/usr/share/man/man1/$MODULE.1"
fi &&

# Install example server configuration
install -Dm644 "$SCRIPT_DIRECTORY/server.toml.example" "/etc/atuin/server.toml.example"
