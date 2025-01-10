add_priv_user http:http -d /var/empty -s /usr/bin/false &&

OPTS+=" --libdir=/usr/lib/lighttpd \
        --sysconfdir=/etc/lighttpd \
        --with-sqlite"

# configure the lighttpd.conf file
sedit "s:/srv/www:/srv/http:g" doc/config/lighttpd.conf &&
sedit "s:/var/run:/run:g"      doc/config/lighttpd.conf &&
sedit 's:"lighttpd":"http":g'  doc/config/lighttpd.conf &&

autoreconf -fi &&

default_build &&

devoke_installwatch &&

mkdir -p /var/log/lighttpd &&
mkdir -p /srv/http/htdocs  &&
mkdir -p /var/lib/lighttpd &&
mkdir -p /etc/lighttpd/conf.d &&
chown http:http /srv/http /var/log/lighttpd &&

if [ ! -f /etc/lighttpd/lighttpd.conf ]; then
  install doc/config/lighttpd.conf /etc/lighttpd/
fi &&

if [ ! -f /etc/lighttpd/modules.conf ]; then
  install doc/config/modules.conf /etc/lighttpd/
fi &&

if [[ -z "$(ls -A /etc/lighttpd/conf.d/)" ]]; then
  install doc/config/conf.d/*.conf /etc/lighttpd/conf.d
fi
