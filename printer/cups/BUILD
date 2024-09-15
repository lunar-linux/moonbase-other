add_priv_user lp:lp -d /dev/null -s /usr/bin/false &&

export CFLAGS+=" -Wno-implicit-function-declaration"

OPTS+=" --disable-static \
        --enable-raw-printing \
        --with-cups-user=lp \
        --with-cups-group=lp \
        --with-exe-file-perm=0755 \
        --with-logdir=/var/log/cups"

default_config &&

sedit "s:-fstack-protector-strong ::" Makedefs &&
sedit "s:-Os -g ::" Makedefs &&

default_make &&

if [ -e /etc/init.d ]; then
   # kill some sysv stuff
   rm -f /etc/init.d/cups{,d}
fi &&

# compress some driver files, adopted from Fedora
find /usr/share/cups/model -name "*.ppd" | xargs gzip -n9f &&

# remove client.conf man page
rm -f /usr/share/man/man5/client.conf.5 &&

# comment out all conversion rules which use any of the removed filters
# that are now part of cups-filters
perl -p -i -e 's:^(.*\s+bannertops\s*)$:#\1:' /usr/share/cups/mime/mime.convs &&

# comment out unnecessary PageLogFormat entry
sedit 's:PageLogFormat:#PageLogFormat:' /etc/cups/cupsd.conf*
