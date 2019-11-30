prepare_install &&

install -Dm755 btrfs-snapshot "/usr/bin/btrfs-snapshot" &&

install -Dm644 functions "/usr/lib/btrfs-snapshot/functions" &&
install -dm755 "/etc/btrfs-snapshot" &&

install -Dt "/usr/lib/systemd/system" -m644 btrfs-snapshot{,@}.{service,timer} &&

install -Dm644 README.md "/usr/share/doc/btrfs-snapshot/README.md"
