# make it find bundled verto from krb5 without its own pkg-config file
export VERTO_CFLAGS="-I/usr/include"
export VERTO_LIBS="-L/usr/lib -lverto"

OPTS+=" --without-selinux \
        --with-pubconf-path=/etc/gssproxy" &&

if module_installed systemd; then
  OPTS+=" --with-initscript=systemd"
else
  OPTS+=" --with-initscript=none"
fi &&

default_config &&
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

# install default config files
install -m644 examples/gssproxy.conf /etc/gssproxy/gssproxy.conf

# nfs services
install -m644 examples/24-nfs-server.conf /etc/gssproxy/24-nfs-server.conf
#install -m644 examples/99-nfs-client.conf /etc/gssproxy/99-nfs-client.conf

# httpd service
install -m644 examples/80-httpd.conf /etc/gssproxy/80-httpd.conf
sedit "s:euid = apache:euid = http:" /etc/gssproxy/80-httpd.conf

#install -Dm644 examples/mech /etc/gss/mech.d/gssproxy.conf
