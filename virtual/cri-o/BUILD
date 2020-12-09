export GOFLAGS="-buildmode=pie \
                -trimpath \
                -modcacherw \
                -mod=readonly \
                -ldflags=-linkmode=external"

#./build_linux.sh &&
make &&

prepare_install &&

make install install.systemd PREFIX=/usr &&

# modules
install -vDm 644 "$SCRIPT_DIRECTORY/modules-${MODULE}.conf" /usr/lib/modules-load.d/ &&

# sysctl
install -vDm 644 "$SCRIPT_DIRECTORY/sysctl-${MODULE}.conf" /usr/lib/sysctl.d/90-cri-o.conf &&

# docs
install -vDm 644 {CONTRIBUTING,README,awesome,code-of-conduct,install,transfer,tutorial}.md \
             -t "/usr/share/doc/${MODULE}/" &&
install -vDm 644 tutorials/*.md \
             -t "/usr/share/doc/${MODULE}/tutorials/" &&
install -vDm 644 contrib/cni/*.{conf,md} \
             -t "/usr/share/doc/${MODULE}/examples/cni/" &&
install -vDm 644 contrib/metrics-exporter/{Containerfile,*.{yaml,gif,json,go}} \
             -t "/usr/share/doc/${MODULE}/examples/metrics-exporter/"
