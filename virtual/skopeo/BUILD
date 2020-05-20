export GOFLAGS="-trimpath -mod=readonly -modcacherw -buildmode=pie"
export CGO_LDFLAGS="$LDFLAGS"

make binary-local BUILDTAGS='containers_image_ostree_stub' &&
make docs

prepare_install &&

make install &&

mkdir -p /etc/containers &&
for conf in registries.conf storage.conf seccomp.json; do
   install -m644 $SCRIPT_DIRECTORY/$conf -t /etc/containers/
done &&

mkdir -p /usr/share/man/man5/ &&
pushd $SCRIPT_DIRECTORY &&
for manpage in *5.md; do
   go-md2man -in $manpage -out /usr/share/man/man5/${manpage%*.md} &&
   gzip /usr/share/man/man5/${manpage%*.md}
done &&
popd
