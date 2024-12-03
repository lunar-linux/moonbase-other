export GOPROXY=https://proxy.golang.org
export GOFLAGS="-buildmode=pie \
                -trimpath \
                -modcacherw \
                -mod=readonly \
                -ldflags=-linkmode=external"

export GO_MD2MAN=/usr/bin/go-md2man

make &&

prepare_install &&

if module_installed systemd; then
  make install install.systemd PREFIX=/usr
else
  make install PREFIX=/usr
fi &&

# install CNI configs
install -vDm 644 contrib/cni/10-crio-bridge.conflist /etc/cni/net.d/100-crio-bridge.conf &&
install -vDm 644 contrib/cni/99-loopback.conflist /etc/cni/net.d/199-crio-loopback.conf &&

# modules
install -vDm 644 "$SCRIPT_DIRECTORY/modules-${MODULE}.conf" /usr/lib/modules-load.d/ &&

# sysctl
install -vDm 644 "$SCRIPT_DIRECTORY/sysctl-${MODULE}.conf" /usr/lib/sysctl.d/90-cri-o.conf &&

# docs
install -vDm 644 {CONTRIBUTING,README,awesome,code-of-conduct,install,transfer,tutorial}.md \
             -t "/usr/share/doc/${MODULE}/" &&
install -vDm 644 tutorials/*.md \
             -t "/usr/share/doc/${MODULE}/tutorials/" &&
install -vDm 644 contrib/cni/*.{conflist,md} \
             -t "/usr/share/doc/${MODULE}/examples/cni/" &&
install -vDm 644 contrib/metrics-exporter/{Containerfile,*.{yaml,gif,json,go}} \
             -t "/usr/share/doc/${MODULE}/examples/metrics-exporter/"
