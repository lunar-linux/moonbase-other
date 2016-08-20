export GOPATH="$SOURCE_DIRECTORY" BUILDTAGS="seccomp"
mkdir -p src/github.com/opencontainers &&
ln -sf $SOURCE_DIRECTORY src/github.com/opencontainers/runc
cd src/github.com/opencontainers/runc &&
make &&

# Build man-pages
if in_depends $MODULE go-md2man; then
  man/md2man-all.sh 2> /dev/null
fi &&

prepare_install &&
install -Dm0755 runc /usr/bin/runc &&
if in_depends $MODULE go-md2man; then
  cp -r man/man*/ /usr/share/man
fi
