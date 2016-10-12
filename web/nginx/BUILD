add_priv_user http:http -d /var/empty -s /bin/false &&

mkdir -p /var/log/nginx &&
mkdir -p /srv/http/htdocs &&
chown http:http /srv/http /var/log/nginx &&
chmod 750 /var/log/nginx &

./configure --prefix=/etc/nginx \
            --conf-path=/etc/nginx/nginx.conf \
            --sbin-path=/usr/bin/nginx \
            --pid-path=/run/nginx.pid  \
            --lock-path=/run/lock/nginx.lock \
            --error-log-path=/var/log/nginx/error.log \
            --http-log-path=/var/log/nginx/access.log \
            --http-client-body-temp-path=/var/spool/nginx/client_body \
            --http-proxy-temp-path=/var/spool/nginx/proxy \
            --http-fastcgi-temp-path=/var/spool/nginx/fastcgi \
            --http-scgi-temp-path=/var/spool/nginx/scgi   \
            --http-uwsgi-temp-path=/var/spool/nginx/uwsgi \
            --user=http  \
            --group=http \
            --with-mail \
            --with-imap  \
            --with-threads \
            --with-pcre-jit \
            --with-file-aio \
            --with-http_v2_module \
            --with-http_dav_module \
            --with-http_flv_module \
            --with-http_mp4_module \
            --with-http_sub_module \
            --with-http_gunzip_module \
            --with-http_realip_module \
            --with-http_addition_module \
            --with-http_degradation_module \
            --with-http_stub_status_module \
            --with-http_secure_link_module \
            --with-http_auth_request_module \
            $OPTS &&

default_make &&

mkdir -p /var/spool/nginx/scgi  &&
mkdir -p /var/spool/nginx/proxy &&
mkdir -p /var/spool/nginx/uwsgi &&
mkdir -p /var/spool/nginx/fastcgi &&
mkdir -p /var/spool/nginx/client_body &&

rm -f /etc/nginx/*.default &&
sedit "s|\<user\s\+\w\+;|user http;|g"  /etc/nginx/nginx.conf &&
sedit "44s|html|/usr/share/nginx/html|" /etc/nginx/nginx.conf &&
sedit "54s|html|/usr/share/nginx/html|" /etc/nginx/nginx.conf &&

install -d /usr/share/nginx/html &&
cp /etc/nginx/html/* /usr/share/nginx/html/ &&
rm -fr /etc/nginx/html &&

install -d /usr/share/man/man8/ &&
install man/nginx.8 /usr/share/man/man8/nginx.8 &&

for i in ftdetect indent syntax; do
  install -Dm644 contrib/vim/${i}/nginx.vim /usr/share/vim/vimfiles/${i}/nginx.vim
done
