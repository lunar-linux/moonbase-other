prepare_install &&

# Install and verify regulatory.bin file
echo "Installing the regulatory.bin file"
install -D -m644 regulatory.bin /usr/lib/crda/regulatory.bin &&

install -D -m644 sforshee.key.pub.pem /usr/lib/crda/pubkeys/sforshee.key.pub.pem &&
install -D -m644 regulatory.bin.5 /usr/share/man/man5/regulatory.bin.5 &&
install -D -m644 regulatory.db /usr/lib/firmware/regulatory.db &&
install -D -m644 regulatory.db.p7s /usr/lib/firmware/regulatory.db.p7s &&
install -D -m644 regulatory.db.5 /usr/share/man/man5/regulatory.db.5 &&

if [ -f /etc/conf.d/wireless-regdom ]; then
  mkdir -p /etc/conf.d
  echo "Installing /etc/conf.d/wireless-regdom"
  for dom in $(grep ^country db.txt | cut -d' ' -f2 | sed 's|:||g'); do
     echo "#WIRELESS_REGDOM=\"${dom}\"" >> /etc/conf.d/wireless-regdom.tmp
  done &&
  sort -u /etc/conf.d/wireless-regdom.tmp >> /etc/conf.d/wireless-regdom &&
  rm /etc/conf.d/wireless-regdom.tmp
fi
