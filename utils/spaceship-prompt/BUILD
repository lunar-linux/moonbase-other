prepare_install &&

mkdir -p "/usr/share/doc/${MODULE}" &&
install -D -m644 README.md "/usr/share/doc/${MODULE}/" &&
find docs -type f -exec install -D -m644 {} "/usr/share/doc/${MODULE}/{}" \; &&

mkdir -p /usr/lib/${MODULE} &&
find lib -type f -exec install -D -m644 {} "/usr/lib/${MODULE}/{}" \; &&
find scripts -type f -exec install -D -m644 {} "/usr/lib/${MODULE}/{}" \; &&
find sections -type f -exec install -D -m644 {} "/usr/lib/${MODULE}/{}" \; &&
install -D -m644 spaceship.zsh "/usr/lib/${MODULE}/" &&
ln -sf spaceship.zsh "/usr/lib/${MODULE}/spaceship.zsh-theme" &&

install -d "/usr/share/zsh/site-functions/"
ln -sf "/usr/lib/${MODULE}/spaceship.zsh" "/usr/share/zsh/site-functions/prompt_spaceship_setup"
