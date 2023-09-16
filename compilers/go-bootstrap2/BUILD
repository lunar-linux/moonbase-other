export GOOS=linux
export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go1.19
export GOPATH=$BUILD_DIRECTORY

if module_installed go; then
  export GOROOT_BOOTSTRAP=/usr/lib/go
else
  export GOROOT_BOOTSTRAP=/usr/lib/go1.4
fi &&

case "$(arch)" in
  x86_64) export GOARCH=amd64 ;;
  i686)   export GOARCH=386 ;;
esac &&

cd src &&
./make.bash --no-clean -v &&

PATH="$GOBIN:$PATH" go install -v -buildmode=shared std &&
case "$GOARCH" in
  amd64) PATH="$GOBIN:$PATH" go install -v -race std ;;
  386)   PATH="$GOBIN:$PATH" go install -v       std ;;
esac &&

prepare_install &&

cd $SOURCE_DIRECTORY &&

mkdir -p $GOROOT_FINAL &&
cp -a bin pkg src lib misc api test $GOROOT_FINAL &&
install -Dm644 VERSION $GOROOT_FINAL/VERSION &&

rm -rf $GOROOT_FINAL/pkg/bootstrap $GOROOT_FINAL/pkg/tool/*/api &&

# TODO: Figure out if really needed
rm -rf $GOROOT_FINAL/pkg/obj/go-build/* &&

# Remove object files from target src dir
find $GOROOT_FINAL/src/ -type f -name '*.[ao]' -delete &&

# Remove all executable source files
find $GOROOT_FINAL/src -type f -executable -delete &&

# For gox
install -Dm755 src/make.bash $GOROOT_FINAL/src/make.bash &&
install -Dm755 src/run.bash $GOROOT_FINAL/src/run.bash &&

find $GOROOT_FINAL/pkg -type f -exec touch '{}' +
