export GOOS=linux
export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go
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
PATH="$GOBIN:$PATH" go install -v -race std &&

##$GOROOT/bin/go get -d golang.org/x/tools/cmd/godoc &&
##$GOROOT/bin/go build -o $SOURCE_DIRECTORY/godoc golang.org/x/tools/cmd/godoc &&

##for i in vet cover; do
##  $GOROOT/bin/go get -d golang.org/x/tools/cmd/${i} &&
##  $GOROOT/bin/go build -o $GOROOT/pkg/tool/${GOOS}_${GOARCH}/${i} golang.org/x/tools/cmd/${i}
##done &&

prepare_install &&

cd $SOURCE_DIRECTORY &&

mkdir -p /usr/lib/go &&
cp -a bin pkg src lib misc api test /usr/lib/go/ &&
install -Dm644 VERSION /usr/lib/go/VERSION &&

mkdir -p /usr/share/doc/go &&
cp -r doc/* /usr/share/doc/go/ &&

ln -sf /usr/share/doc/go /usr/lib/go/doc &&
# add the symlinks to /usr/bin
for f in /usr/lib/go/bin/*; do
   ln -sf $f /usr/bin/
done &&

rm -rf /usr/lib/go/pkg/bootstrap /usr/lib/go/pkg/tool/*/api &&

# TODO: Figure out if really needed
rm -rf /usr/lib/go/pkg/obj/go-build/* &&

# Remove object files from target src dir
find /usr/lib/go/src/ -type f -name '*.[ao]' -delete &&

# Remove all executable source files
find /usr/lib/go/src -type f -executable -delete &&

# For gox
install -Dm755 src/make.bash /usr/lib/go/src/make.bash &&
install -Dm755 src/run.bash /usr/lib/go/src/run.bash &&

# For godoc
install -Dm644 favicon.ico /usr/lib/go/favicon.ico &&
rm -f /usr/share/go/doc/articles/wiki/get.bin &&

find /usr/lib/go/pkg -type f -exec touch '{}' +
