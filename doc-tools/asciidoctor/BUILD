local _gemdir="$(ruby -e 'puts Gem.default_dir')"

prepare_install &&

gem install --ignore-dependencies --no-user-install -v $VERSION $MODULE &&

install -Dm644 man/asciidoctor.1 /usr/share/man/man1/
