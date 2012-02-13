(

  add_priv_user nginx:nginx -s /bin/false -c "nginx"  &&

  ./configure  --prefix=/usr                      \
               --sbin-path=/usr/sbin/nginx        \
               --pid-path=/var/run/nginx.pid      \
               --conf-path=/etc/nginx/nginx.conf  \
               --lock-path=/var/lock/nginx.lock   \
               --http-client-body-temp-path=/var/spool/nginx/client_body_temp  \
               --http-proxy-temp-path=/var/spool/nginx/proxy_temp              \
               --http-fastcgi-temp-path=/var/spool/nginx/fastcgi_temp          \
               --http-log-path=/var/log/nginx/access.log  \
               --error-log-path=/var/log/nginx/error.log  \
               --with-imap_ssl_module          \
               --with-http_stub_status_module  \
               --with-http_dav_module          \
               --user=nginx   \
               --group=nginx  \
               --with-imap    \
               --with-ipv6    \
               --http-scgi-temp-path=/var/spool/nginx   \
               --http-uwsgi-temp-path=/var/spool/nginx  \
              $OPTS                                    &&

   default_make  &&

   mkdir -p /var/log/nginx   &&
   mkdir -p /srv/www/htdocs  &&
   mkdir -p /var/spool/nginx/proxy_temp    &&
   mkdir -p /var/spool/nginx/fastcgi_temp  &&
   mkdir -p /var/spool/nginx/client_body_temp  &&
   chown nginx:nginx /srv/www /var/log/nginx

) > $C_FIFO 2>&1
