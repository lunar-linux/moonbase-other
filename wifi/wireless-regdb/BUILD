prepare_install &&
make install DESTDIR=/ PREFIX=/usr MANDIR=/usr/share/man \
  FIRMWARE_PATH=/usr/lib/firmware &&

mkdir -p /etc/conf.d
if [[ ! -f /etc/conf.d/wireless-regdom ]]; then
  echo "Installing /etc/conf.d/wireless-regdom"
  for dom in $(grep ^country db.txt | cut -d' ' -f2 | sed 's|:||g'); do
     echo "#WIRELESS_REGDOM=\"${dom}\"" >> /etc/conf.d/wireless-regdom.tmp
  done &&
  sort -u /etc/conf.d/wireless-regdom.tmp >> /etc/conf.d/wireless-regdom
  rm /etc/conf.d/wireless-regdom.tmp
fi
