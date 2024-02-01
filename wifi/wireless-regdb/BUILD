make install DESTDIR=/usr MANDIR=/usr/share/man FIRMWARE_PATH=/usr/lib/firmware &&
prepare_install &&

# Install and verify regulatory.bin file
echo "Installing the regulatory.bin file"
install -D -m644 regulatory.bin /usr/lib/crda/regulatory.bin &&

install -D -m644 regulatory.bin.5 /usr/share/man/man5/regulatory.bin.5 &&
install -D -m644 regulatory.db /usr/lib/firmware/regulatory.db &&
install -D -m644 regulatory.db.p7s /usr/lib/firmware/regulatory.db.p7s &&
install -D -m644 regulatory.db.5 /usr/share/man/man5/regulatory.db.5 &&

mkdir -p /etc/conf.d
if [ -f /etc/conf.d/wireless-regdom ]; then
  echo "Installing /etc/conf.d/wireless-regdom"
  for dom in $(grep ^country db.txt | cut -d' ' -f2 | sed 's|:||g'); do
     echo "#WIRELESS_REGDOM=\"${dom}\"" >> /etc/conf.d/wireless-regdom.tmp
  done &&
  sort -u /etc/conf.d/wireless-regdom.tmp >> /etc/conf.d/wireless-regdom
fi
