./autogen.sh &&

if module_installed systemd; then
  OPTS+=" --without-rcstop --without-rcstart --without-rclevels --without-rcdir"
fi &&

OPTS+=" --disable-static \
        --sysconfdir=/etc \
        --sbindir=/usr/bin \
        --localstatedir=/var \
        --with-browseremoteprotocols=DNSSD,CUPS \
        --with-test-font-path=/usr/share/fonts/dejavu-ttf/DejaVuSans.ttf" &&

default_build &&

if module_installed systemd; then
  # add upstream systemd support file
  sedit "s|/usr/sbin/cups-browsed|/usr/bin/cups-browsed|" utils/cups-browsed.service &&
  sedit "s|cups.service|org.cups.cupsd.service|g" utils/cups-browsed.service &&
  install -Dm644 utils/cups-browsed.service /usr/lib/systemd/system/cups-browsed.service
fi &&

# workaround: some printer drivers still require pstoraster and pstopxl
ln -sf /usr/lib/cups/filter/gstoraster /usr/lib/cups/filter/pstoraster &&
ln -sf /usr/lib/cups/filter/gstopxl /usr/lib/cups/filter/pstopxl
