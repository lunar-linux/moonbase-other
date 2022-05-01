export GOFLAGS="-trimpath -mod=readonly -modcacherw"

make VERSION=v$VERSION REVISION=
make VERSION=v$VERSION man
prepare_install &&
make PREFIX=/usr install &&

install -Dm644 man/*.8 -t /usr/share/man/man8/ &&
install -Dm644 man/*.5 -t /usr/share/man/man5/ &&

if module_installed systemd; then
   install -Dm644 containerd.service /usr/lib/systemd/system/containerd.service
fi
