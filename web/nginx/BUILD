mkdir -p /var/spool/nginx/scgi  &&
mkdir -p /var/spool/nginx/proxy &&
mkdir -p /var/spool/nginx/uwsgi &&
mkdir -p /var/spool/nginx/fastcgi &&
mkdir -p /var/spool/nginx/client_body &&

mkdir -p /var/log/nginx  &&
mkdir -p /srv/www/htdocs &&

if module_installed openssl; then
  OPTS+=" --with-imap_ssl_module"
fi &&

add_priv_user nginx:nginx -s /bin/false -c "nginx" &&

./configure  --prefix=/usr \
             --conf-path=/etc/nginx/nginx.conf \
             --sbin-path=/usr/bin/nginx \
             --pid-path=/run/nginx.pid  \
             --lock-path=/run/lock/nginx.lock \
             --http-log-path=/var/log/nginx/access.log \
             --http-client-body-temp-path=/var/spool/nginx/client_body \
             --http-proxy-temp-path=/var/spool/nginx/proxy \
             --http-fastcgi-temp-path=/var/spool/nginx/fastcgi \
             --http-scgi-temp-path=/var/spool/nginx/scgi   \
             --http-uwsgi-temp-path=/var/spool/nginx/uwsgi \
             --user=nginx  \
             --group=nginx \
             --with-imap \
             --with-ipv6 \
             --with-pcre-jit \
             --with-file-aio \
             --with-http_v2_module \
             --with-http_dav_module \
             --with-http_flv_module \
             --with-http_mp4_module \
             --with-http_sub_module \
             --with-http_realip_module \
             --with-http_realip_module \
             --with-http_addition_module \
             --with-http_degradation_module \
             --with-http_stub_status_module \
             --with-http_secure_link_module \
             --with-http_auth_request_module \
             --http-log-path=/var/log/nginx/access.log \
             --error-log-path=/var/log/nginx/error.log \
             $OPTS &&


default_make &&

install -d /usr/share/nginx/html &&
install -m 644 /usr/html/* /usr/share/nginx/html/ &&
rm -fR /usr/html &&

sed -e 's|\<user\s\+\w\+;|user html;|g'  \
    -e '44s|html|/usr/share/nginx/html|' \
    -e '54s|html|/usr/share/nginx/html|' \
    -i /etc/nginx/nginx.conf &&

rm /etc/nginx/*.default &&

chown nginx:nginx /srv/www /var/log/nginx
