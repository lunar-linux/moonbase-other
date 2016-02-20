export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go
export GOPATH=$BUILD_DIRECTORY
export GOROOT_BOOTSTRAP=/usr/lib/go1.4
export GOOS=linux

case "$(arch)" in
  x86_64) export GOARCH=amd64 ;;
  i686)   export GOARCH=386 ;;
esac &&

cd src &&
bash make.bash &&

for i in godex godoc goimports gomvpkg gorename gotype; do
  $GOROOT/bin/go get -d golang.org/x/tools/cmd/$i &&
  $GOROOT/bin/go build -v -x -o $GOPATH/bin/$i golang.org/x/tools/cmd/$i
done &&

for i in benchcmp bundle callgraph digraph eg fiximports html2article oracle present ssadump stress stringer; do
  $GOROOT/bin/go get -d golang.org/x/tools/cmd/$i
  $GOROOT/bin/go build -v -x -o $GOPATH/pkg/tool/${GOOS}_${GOARCH}/$i golang.org/x/tools/cmd/$i
done &&

if [[ "$RUN_TESTS" =~ [yY] ]]; then
  echo "Testing go..." &&
    for i in godoc goimports gomvpkg gorename gotype \
             benchcmp bundle callgraph digraph eg fiximports html2article oracle present ssadump stress stringer; do
      $GOROOT/bin/go test -v -x golang.org/x/tools/cmd/$i
    done &&
    bash run.bash --no-rebuild
fi &&

prepare_install  &&

cd $SOURCE_DIRECTORY &&
mkdir -p /usr/{share/go,lib/go/pkg,lib/go/src,lib/go/site/src} &&
cp -r doc misc /usr/share/go/ &&
ln -sf /usr/share/go/doc /usr/lib/go/doc &&
cp -a bin /usr/ &&
cp -a pkg/{include,linux_${GOARCH},tool} /usr/lib/go/pkg/ &&
if [ -d "pkg/linux_${GOARCH}_race" ]; then
  cp -a pkg/linux_${GOARCH}_race /usr/lib/go/pkg/
fi &&
cp -a $GOROOT/src /usr/lib/go/ &&
cp -a $GOROOT/lib /usr/lib/go/ &&
ln -sf /usr/bin /usr/lib/go/bin &&

install -Dm644 favicon.ico /usr/lib/go/favicon.ico &&
install -Dm644 VERSION /usr/lib/go/VERSION &&

# Cleanup
rm -f /usr/lib/go/src/*.bat
