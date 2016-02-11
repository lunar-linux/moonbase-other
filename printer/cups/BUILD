OPTS+=" --enable-raw-printing \
        --enable-threads \
        --disable-static \
        --with-cups-group=lp" &&

default_config &&

sedit "s:-Os -g::" Makedefs &&
sedit "s:-fstack-protector::" Makedefs &&

default_make &&

if [ -e /etc/init.d/cups ]; then
  rm -f /etc/init.d/cups
fi &&

add_priv_user lp:lp -d /dev/null -s /bin/false
