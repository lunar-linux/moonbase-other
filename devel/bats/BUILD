prepare_install &&

mkdir -p /usr/lib/bats &&
for fn in libexec/*; do
    install -Dm755 ${fn} /usr/lib/bats/$(basename ${fn})
done &&

ln -sf /usr/lib/bats/bats /usr/bin/bats &&

install -Dm744 man/bats.1 /usr/share/man/man1/ &&
install -Dm744 man/bats.7 /usr/share/man/man7/
