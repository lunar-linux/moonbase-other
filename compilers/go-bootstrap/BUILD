export GOROOT_FINAL=/usr/lib/go$(lvu version go-bootstrap|cut -d"." -f1,2)

prepare_install &&

mkdir -p $GOROOT_FINAL/bin &&
cp -a go.env $GOROOT_FINAL/ &&
cp -a bin/* $GOROOT_FINAL/bin/ &&
cp -a {src,lib,pkg} $GOROOT_FINAL/ &&
chmod -R +x $GOROOT_FINAL/pkg/tool
