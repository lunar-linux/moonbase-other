OPTS+=" --enable-plugins \
        --enable-x509-alt-username"

default_build &&

install -d -m0750 -g 90 /etc/openvpn/{client,server} &&

install -d -m0755 /usr/share/openvpn &&
cp -r sample/sample-config-files /usr/share/openvpn/examples
